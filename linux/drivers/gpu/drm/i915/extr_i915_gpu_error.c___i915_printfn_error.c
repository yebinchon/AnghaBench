
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va_format {int * va; int fmt; } ;
struct drm_printer {int arg; } ;


 int i915_error_vprintf (int ,int ,int ) ;

__attribute__((used)) static void __i915_printfn_error(struct drm_printer *p, struct va_format *vaf)
{
 i915_error_vprintf(p->arg, vaf->fmt, *vaf->va);
}
