
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct cyapa_pip_report_data {int * report_head; } ;
struct cyapa {unsigned int gen; int state; TYPE_1__* client; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 size_t PIP_RESP_LENGTH_OFFSET ;
 int PIP_RESP_LENGTH_SIZE ;
 int cyapa_i2c_pip_read (struct cyapa*,int *,unsigned int) ;
 int cyapa_is_pip_app_mode (struct cyapa*) ;
 int cyapa_pip_event_process (struct cyapa*,struct cyapa_pip_report_data*) ;
 int dev_err (struct device*,char*,unsigned int,...) ;
 unsigned int get_unaligned_le16 (int *) ;

int cyapa_pip_irq_handler(struct cyapa *cyapa)
{
 struct device *dev = &cyapa->client->dev;
 struct cyapa_pip_report_data report_data;
 unsigned int report_len;
 int ret;

 if (!cyapa_is_pip_app_mode(cyapa)) {
  dev_err(dev, "invalid device state, gen=%d, state=0x%02x\n",
   cyapa->gen, cyapa->state);
  return -EINVAL;
 }

 ret = cyapa_i2c_pip_read(cyapa, (u8 *)&report_data,
   PIP_RESP_LENGTH_SIZE);
 if (ret != PIP_RESP_LENGTH_SIZE) {
  dev_err(dev, "failed to read length bytes, (%d)\n", ret);
  return -EINVAL;
 }

 report_len = get_unaligned_le16(
   &report_data.report_head[PIP_RESP_LENGTH_OFFSET]);
 if (report_len < PIP_RESP_LENGTH_SIZE) {

  dev_err(dev, "invalid report_len=%d. bytes: %02x %02x\n",
   report_len, report_data.report_head[0],
   report_data.report_head[1]);
  return -EINVAL;
 }


 if (report_len == PIP_RESP_LENGTH_SIZE)
  return 0;

 ret = cyapa_i2c_pip_read(cyapa, (u8 *)&report_data, report_len);
 if (ret != report_len) {
  dev_err(dev, "failed to read %d bytes report data, (%d)\n",
   report_len, ret);
  return -EINVAL;
 }

 return cyapa_pip_event_process(cyapa, &report_data);
}
