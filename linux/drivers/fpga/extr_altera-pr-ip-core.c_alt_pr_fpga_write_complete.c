
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fpga_manager {int dev; } ;
struct fpga_image_info {scalar_t__ config_complete_timeout_us; } ;


 int EIO ;
 int ETIMEDOUT ;


 int alt_pr_fpga_state (struct fpga_manager*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int udelay (int) ;

__attribute__((used)) static int alt_pr_fpga_write_complete(struct fpga_manager *mgr,
          struct fpga_image_info *info)
{
 u32 i = 0;

 do {
  switch (alt_pr_fpga_state(mgr)) {
  case 128:
   return -EIO;

  case 129:
   dev_info(&mgr->dev,
     "successful partial reconfiguration\n");
   return 0;

  default:
   break;
  }
  udelay(1);
 } while (info->config_complete_timeout_us > i++);

 dev_err(&mgr->dev, "timed out waiting for write to complete\n");
 return -ETIMEDOUT;
}
