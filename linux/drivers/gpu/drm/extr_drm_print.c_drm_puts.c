
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_printer {int (* puts ) (struct drm_printer*,char const*) ;} ;


 int drm_printf (struct drm_printer*,char*,char const*) ;
 int stub1 (struct drm_printer*,char const*) ;

void drm_puts(struct drm_printer *p, const char *str)
{
 if (p->puts)
  p->puts(p, str);
 else
  drm_printf(p, "%s", str);
}
