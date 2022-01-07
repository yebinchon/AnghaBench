
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {scalar_t__ fw_auth; } ;


 int qat_uclo_wr_suof_img (struct icp_qat_fw_loader_handle*) ;
 int qat_uclo_wr_uof_img (struct icp_qat_fw_loader_handle*) ;

int qat_uclo_wr_all_uimage(struct icp_qat_fw_loader_handle *handle)
{
 return (handle->fw_auth) ? qat_uclo_wr_suof_img(handle) :
       qat_uclo_wr_uof_img(handle);
}
