
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va_format {int dummy; } ;
struct drm_printer {int arg; } ;


 int seq_printf (int ,char*,struct va_format*) ;

void __drm_printfn_seq_file(struct drm_printer *p, struct va_format *vaf)
{
 seq_printf(p->arg, "%pV", vaf);
}
