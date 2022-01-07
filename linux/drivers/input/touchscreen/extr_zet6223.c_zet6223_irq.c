
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct zet6223_ts {int fingernum; int input; TYPE_1__* client; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int BIT (int) ;
 int EIO ;
 int EV_ABS ;
 int IRQ_HANDLED ;
 int MT_TOOL_FINGER ;
 int ZET6223_MAX_PKT_SIZE ;
 int ZET6223_VALID_PACKET ;
 int dev_err_ratelimited (int *,char*,int) ;
 int get_unaligned_be16 (int*) ;
 int i2c_master_recv (TYPE_1__*,int*,int) ;
 int input_event (int ,int ,int ,int) ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_mt_sync_frame (int ) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t zet6223_irq(int irq, void *dev_id)
{
 struct zet6223_ts *ts = dev_id;
 u16 finger_bits;





 u8 bufsize = 3 + 4 * ts->fingernum;
 u8 buf[ZET6223_MAX_PKT_SIZE];
 int i;
 int ret;
 int error;

 ret = i2c_master_recv(ts->client, buf, bufsize);
 if (ret != bufsize) {
  error = ret < 0 ? ret : -EIO;
  dev_err_ratelimited(&ts->client->dev,
        "Error reading input data: %d\n", error);
  return IRQ_HANDLED;
 }

 if (buf[0] != ZET6223_VALID_PACKET)
  return IRQ_HANDLED;

 finger_bits = get_unaligned_be16(buf + 1);
 for (i = 0; i < ts->fingernum; i++) {
  if (!(finger_bits & BIT(15 - i)))
   continue;

  input_mt_slot(ts->input, i);
  input_mt_report_slot_state(ts->input, MT_TOOL_FINGER, 1);
  input_event(ts->input, EV_ABS, ABS_MT_POSITION_X,
    ((buf[i + 3] >> 4) << 8) + buf[i + 4]);
  input_event(ts->input, EV_ABS, ABS_MT_POSITION_Y,
    ((buf[i + 3] & 0xF) << 8) + buf[i + 5]);
 }

 input_mt_sync_frame(ts->input);
 input_sync(ts->input);

 return IRQ_HANDLED;
}
