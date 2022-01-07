
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {scalar_t__ io_base; } ;


 unsigned int BIT (int) ;
 int ENCI_INFO_READ ;
 scalar_t__ _REG (int ) ;
 unsigned int readl_relaxed (scalar_t__) ;

unsigned int meson_venci_get_field(struct meson_drm *priv)
{
 return readl_relaxed(priv->io_base + _REG(ENCI_INFO_READ)) & BIT(29);
}
