
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int bus; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int DSPCLK_GATE_D ;
 int I830_CLOCK_GATE ;
 int I830_L2_CACHE_CLOCK_GATE_DISABLE ;
 int I915_WRITE (int ,int ) ;
 int OVRUNIT_CLOCK_GATE_DISABLE ;
 int PCI_DEVFN (int ,int ) ;
 int pci_bus_read_config_byte (int ,int ,int ,int *) ;
 int pci_bus_write_config_byte (int ,int ,int ,int ) ;

__attribute__((used)) static void i830_overlay_clock_gating(struct drm_i915_private *dev_priv,
          bool enable)
{
 struct pci_dev *pdev = dev_priv->drm.pdev;
 u8 val;


 if (enable)
  I915_WRITE(DSPCLK_GATE_D, 0);
 else
  I915_WRITE(DSPCLK_GATE_D, OVRUNIT_CLOCK_GATE_DISABLE);


 pci_bus_read_config_byte(pdev->bus,
     PCI_DEVFN(0, 0), I830_CLOCK_GATE, &val);
 if (enable)
  val &= ~I830_L2_CACHE_CLOCK_GATE_DISABLE;
 else
  val |= I830_L2_CACHE_CLOCK_GATE_DISABLE;
 pci_bus_write_config_byte(pdev->bus,
      PCI_DEVFN(0, 0), I830_CLOCK_GATE, val);
}
