
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct mxt_data {scalar_t__ config_crc; int t6_status; int reset_completion; int crc_completion; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int MXT_T6_STATUS_CAL ;
 int MXT_T6_STATUS_CFGERR ;
 int MXT_T6_STATUS_COMSERR ;
 int MXT_T6_STATUS_OFL ;
 int MXT_T6_STATUS_RESET ;
 int MXT_T6_STATUS_SIGERR ;
 int complete (int *) ;
 int dev_dbg (struct device*,char*,int,...) ;

__attribute__((used)) static void mxt_proc_t6_messages(struct mxt_data *data, u8 *msg)
{
 struct device *dev = &data->client->dev;
 u8 status = msg[1];
 u32 crc = msg[2] | (msg[3] << 8) | (msg[4] << 16);

 if (crc != data->config_crc) {
  data->config_crc = crc;
  dev_dbg(dev, "T6 Config Checksum: 0x%06X\n", crc);
 }

 complete(&data->crc_completion);


 if (status & MXT_T6_STATUS_RESET)
  complete(&data->reset_completion);


 if (status != data->t6_status)
  dev_dbg(dev, "T6 Status 0x%02X%s%s%s%s%s%s%s\n",
   status,
   status == 0 ? " OK" : "",
   status & MXT_T6_STATUS_RESET ? " RESET" : "",
   status & MXT_T6_STATUS_OFL ? " OFL" : "",
   status & MXT_T6_STATUS_SIGERR ? " SIGERR" : "",
   status & MXT_T6_STATUS_CAL ? " CAL" : "",
   status & MXT_T6_STATUS_CFGERR ? " CFGERR" : "",
   status & MXT_T6_STATUS_COMSERR ? " COMSERR" : "");


 data->t6_status = status;
}
