
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ io_base; } ;
struct hisi_zip {TYPE_1__ qm; } ;
typedef int pci_ers_result_t ;


 scalar_t__ HZIP_CORE_INT_SOURCE ;
 scalar_t__ HZIP_CORE_INT_STATUS ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_RECOVERED ;
 int hisi_zip_log_hw_error (struct hisi_zip*,scalar_t__) ;
 scalar_t__ readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static pci_ers_result_t hisi_zip_hw_error_handle(struct hisi_zip *hisi_zip)
{
 u32 err_sts;


 err_sts = readl(hisi_zip->qm.io_base + HZIP_CORE_INT_STATUS);

 if (err_sts) {
  hisi_zip_log_hw_error(hisi_zip, err_sts);

  writel(err_sts, hisi_zip->qm.io_base + HZIP_CORE_INT_SOURCE);

  return PCI_ERS_RESULT_NEED_RESET;
 }

 return PCI_ERS_RESULT_RECOVERED;
}
