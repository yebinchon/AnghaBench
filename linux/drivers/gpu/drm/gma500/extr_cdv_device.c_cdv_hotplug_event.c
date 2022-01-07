
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int hotplug_work; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int PORT_HOTPLUG_STAT ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int cdv_hotplug_event(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 schedule_work(&dev_priv->hotplug_work);
 REG_WRITE(PORT_HOTPLUG_STAT, REG_READ(PORT_HOTPLUG_STAT));
 return 1;
}
