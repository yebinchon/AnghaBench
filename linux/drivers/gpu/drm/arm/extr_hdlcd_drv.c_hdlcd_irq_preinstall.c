
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlcd_drm_private {int dummy; } ;
struct drm_device {struct hdlcd_drm_private* dev_private; } ;


 int HDLCD_REG_INT_CLEAR ;
 int HDLCD_REG_INT_MASK ;
 int hdlcd_write (struct hdlcd_drm_private*,int ,int ) ;

__attribute__((used)) static void hdlcd_irq_preinstall(struct drm_device *drm)
{
 struct hdlcd_drm_private *hdlcd = drm->dev_private;

 hdlcd_write(hdlcd, HDLCD_REG_INT_MASK, 0);
 hdlcd_write(hdlcd, HDLCD_REG_INT_CLEAR, ~0);
}
