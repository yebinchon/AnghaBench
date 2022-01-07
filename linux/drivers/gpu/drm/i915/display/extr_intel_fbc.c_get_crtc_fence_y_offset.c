
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int y; unsigned int adjusted_y; } ;
struct TYPE_4__ {TYPE_1__ plane; } ;
struct intel_fbc {TYPE_2__ state_cache; } ;



__attribute__((used)) static unsigned int get_crtc_fence_y_offset(struct intel_fbc *fbc)
{
 return fbc->state_cache.plane.y - fbc->state_cache.plane.adjusted_y;
}
