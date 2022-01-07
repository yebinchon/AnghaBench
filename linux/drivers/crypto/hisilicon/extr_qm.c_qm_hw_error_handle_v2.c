
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_qm {int error_mask; scalar_t__ io_base; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_RECOVERED ;
 scalar_t__ QM_ABNORMAL_INT_SOURCE ;
 scalar_t__ QM_ABNORMAL_INT_STATUS ;
 int qm_log_hw_error (struct hisi_qm*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static pci_ers_result_t qm_hw_error_handle_v2(struct hisi_qm *qm)
{
 u32 error_status, tmp;


 tmp = readl(qm->io_base + QM_ABNORMAL_INT_STATUS);
 error_status = qm->error_mask & tmp;

 if (error_status) {
  qm_log_hw_error(qm, error_status);


  writel(error_status, qm->io_base + QM_ABNORMAL_INT_SOURCE);

  return PCI_ERS_RESULT_NEED_RESET;
 }

 return PCI_ERS_RESULT_RECOVERED;
}
