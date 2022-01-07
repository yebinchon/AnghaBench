
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_dw_hdmi {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int of_device_is_compatible (int ,char const*) ;

__attribute__((used)) static inline int dw_hdmi_is_compatible(struct meson_dw_hdmi *dw_hdmi,
     const char *compat)
{
 return of_device_is_compatible(dw_hdmi->dev->of_node, compat);
}
