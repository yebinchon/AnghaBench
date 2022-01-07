
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlcd_drm_private {int dummy; } ;
struct drm_device {struct hdlcd_drm_private* dev_private; } ;


 unsigned long HDLCD_DEBUG_INT_MASK ;
 unsigned long HDLCD_INTERRUPT_VSYNC ;
 int HDLCD_REG_INT_MASK ;
 unsigned long hdlcd_read (struct hdlcd_drm_private*,int ) ;
 int hdlcd_write (struct hdlcd_drm_private*,int ,unsigned long) ;

__attribute__((used)) static void hdlcd_irq_uninstall(struct drm_device *drm)
{
 struct hdlcd_drm_private *hdlcd = drm->dev_private;

 unsigned long irq_mask = hdlcd_read(hdlcd, HDLCD_REG_INT_MASK);







 irq_mask &= ~HDLCD_INTERRUPT_VSYNC;

 hdlcd_write(hdlcd, HDLCD_REG_INT_MASK, irq_mask);
}
