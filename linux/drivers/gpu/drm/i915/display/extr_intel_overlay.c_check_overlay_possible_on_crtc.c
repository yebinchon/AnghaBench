
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_overlay {int dummy; } ;
struct intel_crtc {TYPE_1__* config; int active; } ;
struct TYPE_2__ {scalar_t__ double_wide; } ;


 int EINVAL ;

__attribute__((used)) static int check_overlay_possible_on_crtc(struct intel_overlay *overlay,
       struct intel_crtc *crtc)
{
 if (!crtc->active)
  return -EINVAL;


 if (crtc->config->double_wide)
  return -EINVAL;

 return 0;
}
