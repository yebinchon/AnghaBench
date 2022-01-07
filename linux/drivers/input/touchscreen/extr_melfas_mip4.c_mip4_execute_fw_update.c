
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mip4_ts {TYPE_2__* client; TYPE_1__* input; } ;
struct mip4_bin_tail {int dummy; } ;
struct firmware {int data; } ;
struct TYPE_4__ {int irq; int dev; } ;
struct TYPE_3__ {scalar_t__ users; } ;


 int dev_err (int *,char*,int) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int mip4_flash_fw (struct mip4_ts*,int ,int ,int ) ;
 int mip4_parse_firmware (struct mip4_ts*,struct firmware const*,int *,int *,struct mip4_bin_tail const**) ;
 int mip4_power_off (struct mip4_ts*) ;
 int mip4_power_on (struct mip4_ts*) ;

__attribute__((used)) static int mip4_execute_fw_update(struct mip4_ts *ts, const struct firmware *fw)
{
 const struct mip4_bin_tail *fw_info;
 u32 fw_start_offset;
 u32 fw_size;
 int retires = 3;
 int error;

 error = mip4_parse_firmware(ts, fw,
        &fw_start_offset, &fw_size, &fw_info);
 if (error)
  return error;

 if (ts->input->users) {
  disable_irq(ts->client->irq);
 } else {
  error = mip4_power_on(ts);
  if (error)
   return error;
 }


 do {
  error = mip4_flash_fw(ts, fw->data, fw_size, fw_start_offset);
  if (!error)
   break;
 } while (--retires);

 if (error)
  dev_err(&ts->client->dev,
   "Failed to flash firmware: %d\n", error);


 if (ts->input->users)
  enable_irq(ts->client->irq);
 else
  mip4_power_off(ts);

 return error ? error : 0;
}
