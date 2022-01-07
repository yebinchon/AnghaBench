
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlcd_drm_private {int crtc; int vsync_count; int bus_error_count; int dma_end_count; int buffer_underrun_count; } ;
struct drm_device {struct hdlcd_drm_private* dev_private; } ;
typedef int irqreturn_t ;


 unsigned long HDLCD_INTERRUPT_BUS_ERROR ;
 unsigned long HDLCD_INTERRUPT_DMA_END ;
 unsigned long HDLCD_INTERRUPT_UNDERRUN ;
 unsigned long HDLCD_INTERRUPT_VSYNC ;
 int HDLCD_REG_INT_CLEAR ;
 int HDLCD_REG_INT_STATUS ;
 int IRQ_HANDLED ;
 int atomic_inc (int *) ;
 int drm_crtc_handle_vblank (int *) ;
 unsigned long hdlcd_read (struct hdlcd_drm_private*,int ) ;
 int hdlcd_write (struct hdlcd_drm_private*,int ,unsigned long) ;

__attribute__((used)) static irqreturn_t hdlcd_irq(int irq, void *arg)
{
 struct drm_device *drm = arg;
 struct hdlcd_drm_private *hdlcd = drm->dev_private;
 unsigned long irq_status;

 irq_status = hdlcd_read(hdlcd, HDLCD_REG_INT_STATUS);
 if (irq_status & HDLCD_INTERRUPT_VSYNC)
  drm_crtc_handle_vblank(&hdlcd->crtc);


 hdlcd_write(hdlcd, HDLCD_REG_INT_CLEAR, irq_status);

 return IRQ_HANDLED;
}
