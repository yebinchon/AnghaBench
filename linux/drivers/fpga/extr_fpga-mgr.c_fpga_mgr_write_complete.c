
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_manager {int state; int dev; TYPE_1__* mops; } ;
struct fpga_image_info {int dummy; } ;
struct TYPE_2__ {int (* write_complete ) (struct fpga_manager*,struct fpga_image_info*) ;} ;


 int FPGA_MGR_STATE_OPERATING ;
 int FPGA_MGR_STATE_WRITE_COMPLETE ;
 int FPGA_MGR_STATE_WRITE_COMPLETE_ERR ;
 int dev_err (int *,char*) ;
 int stub1 (struct fpga_manager*,struct fpga_image_info*) ;

__attribute__((used)) static int fpga_mgr_write_complete(struct fpga_manager *mgr,
       struct fpga_image_info *info)
{
 int ret;

 mgr->state = FPGA_MGR_STATE_WRITE_COMPLETE;
 ret = mgr->mops->write_complete(mgr, info);
 if (ret) {
  dev_err(&mgr->dev, "Error after writing image data to FPGA\n");
  mgr->state = FPGA_MGR_STATE_WRITE_COMPLETE_ERR;
  return ret;
 }
 mgr->state = FPGA_MGR_STATE_OPERATING;

 return 0;
}
