
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_plane_state {int scaler_id; int base; } ;
struct intel_plane {int base; } ;


 int ENOMEM ;
 struct intel_plane* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_reset (int *,int *) ;
 int kfree (struct intel_plane*) ;
 void* kzalloc (int,int ) ;

struct intel_plane *intel_plane_alloc(void)
{
 struct intel_plane_state *plane_state;
 struct intel_plane *plane;

 plane = kzalloc(sizeof(*plane), GFP_KERNEL);
 if (!plane)
  return ERR_PTR(-ENOMEM);

 plane_state = kzalloc(sizeof(*plane_state), GFP_KERNEL);
 if (!plane_state) {
  kfree(plane);
  return ERR_PTR(-ENOMEM);
 }

 __drm_atomic_helper_plane_reset(&plane->base, &plane_state->base);
 plane_state->scaler_id = -1;

 return plane;
}
