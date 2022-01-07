
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_driver_caps {int scheduler; int has_logical_contexts; } ;
struct drm_printer {int dummy; } ;


 int drm_printf (struct drm_printer*,char*,int ) ;
 int yesno (int ) ;

void intel_driver_caps_print(const struct intel_driver_caps *caps,
        struct drm_printer *p)
{
 drm_printf(p, "Has logical contexts? %s\n",
     yesno(caps->has_logical_contexts));
 drm_printf(p, "scheduler: %x\n", caps->scheduler);
}
