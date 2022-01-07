
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int VGA_MSR_READ ;
 int VGA_MSR_WRITE ;
 int VGA_RSRC_LEGACY_IO ;
 int gen8_irq_power_well_post_enable (struct drm_i915_private*,scalar_t__) ;
 int inb (int ) ;
 int outb (int ,int ) ;
 int vga_get_uninterruptible (struct pci_dev*,int ) ;
 int vga_put (struct pci_dev*,int ) ;

__attribute__((used)) static void hsw_power_well_post_enable(struct drm_i915_private *dev_priv,
           u8 irq_pipe_mask, bool has_vga)
{
 struct pci_dev *pdev = dev_priv->drm.pdev;
 if (has_vga) {
  vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
  outb(inb(VGA_MSR_READ), VGA_MSR_WRITE);
  vga_put(pdev, VGA_RSRC_LEGACY_IO);
 }

 if (irq_pipe_mask)
  gen8_irq_power_well_post_enable(dev_priv, irq_pipe_mask);
}
