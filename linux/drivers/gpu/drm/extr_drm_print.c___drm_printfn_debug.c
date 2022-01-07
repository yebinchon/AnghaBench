
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va_format {int dummy; } ;
struct drm_printer {int prefix; } ;


 int pr_debug (char*,int ,struct va_format*) ;

void __drm_printfn_debug(struct drm_printer *p, struct va_format *vaf)
{
 pr_debug("%s %pV", p->prefix, vaf);
}
