
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct edt_ft5x06_ts_data {int version; int max_support_points; int input; int prop; TYPE_1__* client; } ;
struct device {int dummy; } ;
typedef int rdbuf ;
typedef int irqreturn_t ;
typedef int cmd ;
struct TYPE_2__ {struct device dev; } ;







 int IRQ_HANDLED ;
 int MT_TOOL_FINGER ;
 int TOUCH_EVENT_DOWN ;
 int TOUCH_EVENT_RESERVED ;
 int TOUCH_EVENT_UP ;
 int dev_err_ratelimited (struct device*,char*,int,...) ;
 int edt_ft5x06_ts_check_crc (struct edt_ft5x06_ts_data*,int*,int) ;
 int edt_ft5x06_ts_readwrite (TYPE_1__*,int,int*,int,int*) ;
 int get_unaligned_be16 (int*) ;
 int input_mt_report_pointer_emulation (int ,int) ;
 scalar_t__ input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_sync (int ) ;
 int memset (int*,int ,int) ;
 int swap (int,int) ;
 int touchscreen_report_pos (int ,int *,int,int,int) ;

__attribute__((used)) static irqreturn_t edt_ft5x06_ts_isr(int irq, void *dev_id)
{
 struct edt_ft5x06_ts_data *tsdata = dev_id;
 struct device *dev = &tsdata->client->dev;
 u8 cmd;
 u8 rdbuf[63];
 int i, type, x, y, id;
 int offset, tplen, datalen, crclen;
 int error;

 switch (tsdata->version) {
 case 132:
  cmd = 0xf9;
  offset = 5;
  tplen = 4;
  crclen = 1;
  break;

 case 131:
 case 130:
 case 129:
 case 128:
  cmd = 0x0;
  offset = 3;
  tplen = 6;
  crclen = 0;
  break;

 default:
  goto out;
 }

 memset(rdbuf, 0, sizeof(rdbuf));
 datalen = tplen * tsdata->max_support_points + offset + crclen;

 error = edt_ft5x06_ts_readwrite(tsdata->client,
     sizeof(cmd), &cmd,
     datalen, rdbuf);
 if (error) {
  dev_err_ratelimited(dev, "Unable to fetch data, error: %d\n",
        error);
  goto out;
 }


 if (tsdata->version == 132) {
  if (rdbuf[0] != 0xaa || rdbuf[1] != 0xaa ||
   rdbuf[2] != datalen) {
   dev_err_ratelimited(dev,
     "Unexpected header: %02x%02x%02x!\n",
     rdbuf[0], rdbuf[1], rdbuf[2]);
   goto out;
  }

  if (!edt_ft5x06_ts_check_crc(tsdata, rdbuf, datalen))
   goto out;
 }

 for (i = 0; i < tsdata->max_support_points; i++) {
  u8 *buf = &rdbuf[i * tplen + offset];

  type = buf[0] >> 6;

  if (type == TOUCH_EVENT_RESERVED)
   continue;


  if (tsdata->version == 132 && type == TOUCH_EVENT_DOWN)
   continue;

  x = get_unaligned_be16(buf) & 0x0fff;
  y = get_unaligned_be16(buf + 2) & 0x0fff;

  if (tsdata->version == 129)
   swap(x, y);

  id = (buf[2] >> 4) & 0x0f;

  input_mt_slot(tsdata->input, id);
  if (input_mt_report_slot_state(tsdata->input, MT_TOOL_FINGER,
            type != TOUCH_EVENT_UP))
   touchscreen_report_pos(tsdata->input, &tsdata->prop,
            x, y, 1);
 }

 input_mt_report_pointer_emulation(tsdata->input, 1);
 input_sync(tsdata->input);

out:
 return IRQ_HANDLED;
}
