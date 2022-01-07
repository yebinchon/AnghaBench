
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_printer {int dummy; } ;


 int drm_puts (struct drm_printer*,char const*) ;

__attribute__((used)) static void print_name(struct drm_printer *p, const char *fmt, const char *name)
{
 drm_puts(p, fmt);
 drm_puts(p, name);
 drm_puts(p, "\n");
}
