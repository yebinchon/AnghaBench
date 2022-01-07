
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; } ;
struct TYPE_2__ {unsigned char ae_max_num; } ;


 unsigned int GET_GLB_CSR (struct icp_qat_fw_loader_handle*,int ) ;
 unsigned int MC_TIMESTAMP_ENABLE ;
 int MISC_CONTROL ;
 int SET_GLB_CSR (struct icp_qat_fw_loader_handle*,int ,unsigned int) ;
 int TIMESTAMP_HIGH ;
 int TIMESTAMP_LOW ;
 int qat_hal_wr_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ,int ) ;

__attribute__((used)) static void qat_hal_reset_timestamp(struct icp_qat_fw_loader_handle *handle)
{
 unsigned int misc_ctl;
 unsigned char ae;


 misc_ctl = GET_GLB_CSR(handle, MISC_CONTROL);
 if (misc_ctl & MC_TIMESTAMP_ENABLE)
  SET_GLB_CSR(handle, MISC_CONTROL, misc_ctl &
       (~MC_TIMESTAMP_ENABLE));

 for (ae = 0; ae < handle->hal_handle->ae_max_num; ae++) {
  qat_hal_wr_ae_csr(handle, ae, TIMESTAMP_LOW, 0);
  qat_hal_wr_ae_csr(handle, ae, TIMESTAMP_HIGH, 0);
 }

 SET_GLB_CSR(handle, MISC_CONTROL, misc_ctl | MC_TIMESTAMP_ENABLE);
}
