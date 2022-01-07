
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_via_private_t ;


 int VIA_DMA_CSR_TA ;
 scalar_t__ VIA_PCI_DMA_CSR0 ;
 int via_write (int *,scalar_t__,int ) ;

__attribute__((used)) static void
via_abort_dmablit(struct drm_device *dev, int engine)
{
 drm_via_private_t *dev_priv = (drm_via_private_t *)dev->dev_private;

 via_write(dev_priv, VIA_PCI_DMA_CSR0 + engine*0x04, VIA_DMA_CSR_TA);
}
