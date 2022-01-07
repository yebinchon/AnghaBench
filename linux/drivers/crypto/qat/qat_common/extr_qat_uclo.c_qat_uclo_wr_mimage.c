
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icp_qat_fw_loader_handle {TYPE_1__* pci_dev; scalar_t__ fw_auth; } ;
struct icp_qat_fw_auth_desc {int dummy; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 scalar_t__ ADF_C3XXX_PCI_DEVICE_ID ;
 int EINVAL ;
 int pr_err (char*) ;
 int qat_uclo_auth_fw (struct icp_qat_fw_loader_handle*,struct icp_qat_fw_auth_desc*) ;
 int qat_uclo_map_auth_fw (struct icp_qat_fw_loader_handle*,void*,int,struct icp_qat_fw_auth_desc**) ;
 int qat_uclo_ummap_auth_fw (struct icp_qat_fw_loader_handle*,struct icp_qat_fw_auth_desc**) ;
 int qat_uclo_wr_sram_by_words (struct icp_qat_fw_loader_handle*,int ,void*,int) ;

int qat_uclo_wr_mimage(struct icp_qat_fw_loader_handle *handle,
         void *addr_ptr, int mem_size)
{
 struct icp_qat_fw_auth_desc *desc = ((void*)0);
 int status = 0;

 if (handle->fw_auth) {
  if (!qat_uclo_map_auth_fw(handle, addr_ptr, mem_size, &desc))
   status = qat_uclo_auth_fw(handle, desc);
  qat_uclo_ummap_auth_fw(handle, &desc);
 } else {
  if (handle->pci_dev->device == ADF_C3XXX_PCI_DEVICE_ID) {
   pr_err("QAT: C3XXX doesn't support unsigned MMP\n");
   return -EINVAL;
  }
  qat_uclo_wr_sram_by_words(handle, 0, addr_ptr, mem_size);
 }
 return status;
}
