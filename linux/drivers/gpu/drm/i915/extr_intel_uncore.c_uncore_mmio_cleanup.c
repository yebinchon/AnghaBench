
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct intel_uncore {int regs; TYPE_2__* i915; } ;
struct TYPE_3__ {struct pci_dev* pdev; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;


 int pci_iounmap (struct pci_dev*,int ) ;

__attribute__((used)) static void uncore_mmio_cleanup(struct intel_uncore *uncore)
{
 struct pci_dev *pdev = uncore->i915->drm.pdev;

 pci_iounmap(pdev, uncore->regs);
}
