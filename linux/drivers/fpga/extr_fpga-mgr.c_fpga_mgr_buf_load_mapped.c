
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_manager {int state; int dev; TYPE_1__* mops; } ;
struct fpga_image_info {int dummy; } ;
struct TYPE_2__ {int (* write ) (struct fpga_manager*,char const*,size_t) ;} ;


 int FPGA_MGR_STATE_WRITE ;
 int FPGA_MGR_STATE_WRITE_ERR ;
 int dev_err (int *,char*) ;
 int fpga_mgr_write_complete (struct fpga_manager*,struct fpga_image_info*) ;
 int fpga_mgr_write_init_buf (struct fpga_manager*,struct fpga_image_info*,char const*,size_t) ;
 int stub1 (struct fpga_manager*,char const*,size_t) ;

__attribute__((used)) static int fpga_mgr_buf_load_mapped(struct fpga_manager *mgr,
        struct fpga_image_info *info,
        const char *buf, size_t count)
{
 int ret;

 ret = fpga_mgr_write_init_buf(mgr, info, buf, count);
 if (ret)
  return ret;




 mgr->state = FPGA_MGR_STATE_WRITE;
 ret = mgr->mops->write(mgr, buf, count);
 if (ret) {
  dev_err(&mgr->dev, "Error while writing image data to FPGA\n");
  mgr->state = FPGA_MGR_STATE_WRITE_ERR;
  return ret;
 }

 return fpga_mgr_write_complete(mgr, info);
}
