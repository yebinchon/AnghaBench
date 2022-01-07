
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct intel_th {int dev; } ;


 int INTEL_TH_CAP (struct intel_th*,int ) ;
 int NPKDSC_TSACT ;
 int PCI_REG_NPKDSC ;
 int dev_err (int *,char*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 struct pci_dev* to_pci_dev (int ) ;
 int tscu_enable ;

__attribute__((used)) static int intel_th_pci_activate(struct intel_th *th)
{
 struct pci_dev *pdev = to_pci_dev(th->dev);
 u32 npkdsc;
 int err;

 if (!INTEL_TH_CAP(th, tscu_enable))
  return 0;

 err = pci_read_config_dword(pdev, PCI_REG_NPKDSC, &npkdsc);
 if (!err) {
  npkdsc |= NPKDSC_TSACT;
  err = pci_write_config_dword(pdev, PCI_REG_NPKDSC, npkdsc);
 }

 if (err)
  dev_err(&pdev->dev, "failed to read NPKDSC register\n");

 return err;
}
