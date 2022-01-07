
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_intel_overlay_attrs {int gamma0; int gamma1; int gamma2; int gamma3; int gamma4; int gamma5; } ;


 int EINVAL ;
 int check_gamma5_errata (int) ;
 int check_gamma_bounds (int,int) ;

__attribute__((used)) static int check_gamma(struct drm_intel_overlay_attrs *attrs)
{
 if (!check_gamma_bounds(0, attrs->gamma0) ||
     !check_gamma_bounds(attrs->gamma0, attrs->gamma1) ||
     !check_gamma_bounds(attrs->gamma1, attrs->gamma2) ||
     !check_gamma_bounds(attrs->gamma2, attrs->gamma3) ||
     !check_gamma_bounds(attrs->gamma3, attrs->gamma4) ||
     !check_gamma_bounds(attrs->gamma4, attrs->gamma5) ||
     !check_gamma_bounds(attrs->gamma5, 0x00ffffff))
  return -EINVAL;

 if (!check_gamma5_errata(attrs->gamma5))
  return -EINVAL;

 return 0;
}
