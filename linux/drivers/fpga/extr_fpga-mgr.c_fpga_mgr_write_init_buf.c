
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_manager {int state; int dev; TYPE_1__* mops; } ;
struct fpga_image_info {int dummy; } ;
struct TYPE_2__ {int (* write_init ) (struct fpga_manager*,struct fpga_image_info*,char const*,int ) ;int initial_header_size; } ;


 int FPGA_MGR_STATE_WRITE_INIT ;
 int FPGA_MGR_STATE_WRITE_INIT_ERR ;
 int dev_err (int *,char*) ;
 int min (int ,size_t) ;
 int stub1 (struct fpga_manager*,struct fpga_image_info*,char const*,int ) ;
 int stub2 (struct fpga_manager*,struct fpga_image_info*,char const*,int ) ;

__attribute__((used)) static int fpga_mgr_write_init_buf(struct fpga_manager *mgr,
       struct fpga_image_info *info,
       const char *buf, size_t count)
{
 int ret;

 mgr->state = FPGA_MGR_STATE_WRITE_INIT;
 if (!mgr->mops->initial_header_size)
  ret = mgr->mops->write_init(mgr, info, ((void*)0), 0);
 else
  ret = mgr->mops->write_init(
      mgr, info, buf, min(mgr->mops->initial_header_size, count));

 if (ret) {
  dev_err(&mgr->dev, "Error preparing FPGA for writing\n");
  mgr->state = FPGA_MGR_STATE_WRITE_INIT_ERR;
  return ret;
 }

 return 0;
}
