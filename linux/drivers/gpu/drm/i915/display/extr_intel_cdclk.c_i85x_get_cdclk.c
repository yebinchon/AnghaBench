
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int revision; int bus; } ;
struct intel_cdclk_state {int cdclk; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
 int GC_CLOCK_CONTROL_MASK ;
 int HPLLCC ;
 int PCI_DEVFN (int ,int) ;
 int pci_bus_read_config_word (int ,int ,int ,int*) ;

__attribute__((used)) static void i85x_get_cdclk(struct drm_i915_private *dev_priv,
      struct intel_cdclk_state *cdclk_state)
{
 struct pci_dev *pdev = dev_priv->drm.pdev;
 u16 hpllcc = 0;






 if (pdev->revision == 0x1) {
  cdclk_state->cdclk = 133333;
  return;
 }

 pci_bus_read_config_word(pdev->bus,
     PCI_DEVFN(0, 3), HPLLCC, &hpllcc);




 switch (hpllcc & GC_CLOCK_CONTROL_MASK) {
 case 133:
 case 132:
 case 134:
  cdclk_state->cdclk = 200000;
  break;
 case 129:
  cdclk_state->cdclk = 250000;
  break;
 case 135:
  cdclk_state->cdclk = 133333;
  break;
 case 131:
 case 130:
 case 128:
  cdclk_state->cdclk = 266667;
  break;
 }
}
