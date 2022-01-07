
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int CRT_HOTPLUG_INT_EN ;
 int HDMIB_HOTPLUG_INT_EN ;
 int HDMIC_HOTPLUG_INT_EN ;
 int HDMID_HOTPLUG_INT_EN ;
 int PORT_HOTPLUG_EN ;
 int PORT_HOTPLUG_STAT ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;

__attribute__((used)) static void cdv_hotplug_enable(struct drm_device *dev, bool on)
{
 if (on) {
  u32 hotplug = REG_READ(PORT_HOTPLUG_EN);
  hotplug |= HDMIB_HOTPLUG_INT_EN | HDMIC_HOTPLUG_INT_EN |
      HDMID_HOTPLUG_INT_EN | CRT_HOTPLUG_INT_EN;
  REG_WRITE(PORT_HOTPLUG_EN, hotplug);
 } else {
  REG_WRITE(PORT_HOTPLUG_EN, 0);
  REG_WRITE(PORT_HOTPLUG_STAT, REG_READ(PORT_HOTPLUG_STAT));
 }
}
