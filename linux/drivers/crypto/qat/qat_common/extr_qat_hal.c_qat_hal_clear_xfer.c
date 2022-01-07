
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; } ;
struct TYPE_2__ {unsigned char ae_max_num; } ;


 int ICP_DR_RD_ABS ;
 unsigned short ICP_QAT_UCLO_MAX_GPR_REG ;
 int ICP_SR_RD_ABS ;
 int qat_hal_init_rd_xfer (struct icp_qat_fw_loader_handle*,unsigned char,int ,int ,unsigned short,int ) ;

__attribute__((used)) static void qat_hal_clear_xfer(struct icp_qat_fw_loader_handle *handle)
{
 unsigned char ae;
 unsigned short reg;

 for (ae = 0; ae < handle->hal_handle->ae_max_num; ae++) {
  for (reg = 0; reg < ICP_QAT_UCLO_MAX_GPR_REG; reg++) {
   qat_hal_init_rd_xfer(handle, ae, 0, ICP_SR_RD_ABS,
          reg, 0);
   qat_hal_init_rd_xfer(handle, ae, 0, ICP_DR_RD_ABS,
          reg, 0);
  }
 }
}
