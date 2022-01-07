
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icp_qat_fw_loader_handle {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int device; } ;





 unsigned int ICP_QAT_AC_895XCC_DEV_TYPE ;
 unsigned int ICP_QAT_AC_C3XXX_DEV_TYPE ;
 unsigned int ICP_QAT_AC_C62X_DEV_TYPE ;
 int pr_err (char*,int) ;

__attribute__((used)) static unsigned int
qat_uclo_get_dev_type(struct icp_qat_fw_loader_handle *handle)
{
 switch (handle->pci_dev->device) {
 case 128:
  return ICP_QAT_AC_895XCC_DEV_TYPE;
 case 129:
  return ICP_QAT_AC_C62X_DEV_TYPE;
 case 130:
  return ICP_QAT_AC_C3XXX_DEV_TYPE;
 default:
  pr_err("QAT: unsupported device 0x%x\n",
         handle->pci_dev->device);
  return 0;
 }
}
