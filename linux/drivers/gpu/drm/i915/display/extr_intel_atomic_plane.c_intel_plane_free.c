
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct intel_plane {TYPE_1__ base; } ;


 int intel_plane_destroy_state (TYPE_1__*,int ) ;
 int kfree (struct intel_plane*) ;

void intel_plane_free(struct intel_plane *plane)
{
 intel_plane_destroy_state(&plane->base, plane->base.state);
 kfree(plane);
}
