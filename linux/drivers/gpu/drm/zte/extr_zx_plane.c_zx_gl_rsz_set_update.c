
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_plane {scalar_t__ rsz; } ;


 scalar_t__ RSZ_ENABLE_CFG ;
 int zx_writel (scalar_t__,int) ;

__attribute__((used)) static inline void zx_gl_rsz_set_update(struct zx_plane *zplane)
{
 zx_writel(zplane->rsz + RSZ_ENABLE_CFG, 1);
}
