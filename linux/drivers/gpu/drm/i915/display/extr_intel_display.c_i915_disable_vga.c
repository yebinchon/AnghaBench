
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
typedef int i915_reg_t ;


 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 int SR01 ;
 int VGA_DISP_DISABLE ;
 int VGA_RSRC_LEGACY_IO ;
 int VGA_SR_DATA ;
 int VGA_SR_INDEX ;
 int i915_vgacntrl_reg (struct drm_i915_private*) ;
 int inb (int ) ;
 int outb (int,int ) ;
 int udelay (int) ;
 int vga_get_uninterruptible (struct pci_dev*,int ) ;
 int vga_put (struct pci_dev*,int ) ;

__attribute__((used)) static void i915_disable_vga(struct drm_i915_private *dev_priv)
{
 struct pci_dev *pdev = dev_priv->drm.pdev;
 u8 sr1;
 i915_reg_t vga_reg = i915_vgacntrl_reg(dev_priv);


 vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
 outb(SR01, VGA_SR_INDEX);
 sr1 = inb(VGA_SR_DATA);
 outb(sr1 | 1<<5, VGA_SR_DATA);
 vga_put(pdev, VGA_RSRC_LEGACY_IO);
 udelay(300);

 I915_WRITE(vga_reg, VGA_DISP_DISABLE);
 POSTING_READ(vga_reg);
}
