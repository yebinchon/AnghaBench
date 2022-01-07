
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct drm_private_obj {TYPE_7__* funcs; } ;
struct drm_plane {TYPE_5__* funcs; } ;
struct drm_mode_config {int num_crtc; int num_total_plane; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct drm_crtc {TYPE_3__* funcs; } ;
struct drm_connector {TYPE_1__* funcs; } ;
struct drm_atomic_state {int num_connector; int num_private_objs; int * fake_commit; TYPE_8__* private_objs; TYPE_6__* planes; TYPE_4__* crtcs; TYPE_2__* connectors; struct drm_device* dev; } ;
struct TYPE_16__ {int * new_state; int * old_state; int * state; struct drm_private_obj* ptr; } ;
struct TYPE_15__ {int (* atomic_destroy_state ) (struct drm_private_obj*,int *) ;} ;
struct TYPE_14__ {int * new_state; int * old_state; int * state; struct drm_plane* ptr; } ;
struct TYPE_13__ {int (* atomic_destroy_state ) (struct drm_plane*,int *) ;} ;
struct TYPE_12__ {int * commit; int * new_state; int * old_state; int * state; struct drm_crtc* ptr; } ;
struct TYPE_11__ {int (* atomic_destroy_state ) (struct drm_crtc*,int *) ;} ;
struct TYPE_10__ {int * new_state; int * old_state; int * state; struct drm_connector* ptr; } ;
struct TYPE_9__ {int (* atomic_destroy_state ) (struct drm_connector*,int *) ;} ;


 int DRM_DEBUG_ATOMIC (char*,struct drm_atomic_state*) ;
 int drm_connector_put (struct drm_connector*) ;
 int drm_crtc_commit_put (int *) ;
 int stub1 (struct drm_connector*,int *) ;
 int stub2 (struct drm_crtc*,int *) ;
 int stub3 (struct drm_plane*,int *) ;
 int stub4 (struct drm_private_obj*,int *) ;

void drm_atomic_state_default_clear(struct drm_atomic_state *state)
{
 struct drm_device *dev = state->dev;
 struct drm_mode_config *config = &dev->mode_config;
 int i;

 DRM_DEBUG_ATOMIC("Clearing atomic state %p\n", state);

 for (i = 0; i < state->num_connector; i++) {
  struct drm_connector *connector = state->connectors[i].ptr;

  if (!connector)
   continue;

  connector->funcs->atomic_destroy_state(connector,
             state->connectors[i].state);
  state->connectors[i].ptr = ((void*)0);
  state->connectors[i].state = ((void*)0);
  state->connectors[i].old_state = ((void*)0);
  state->connectors[i].new_state = ((void*)0);
  drm_connector_put(connector);
 }

 for (i = 0; i < config->num_crtc; i++) {
  struct drm_crtc *crtc = state->crtcs[i].ptr;

  if (!crtc)
   continue;

  crtc->funcs->atomic_destroy_state(crtc,
        state->crtcs[i].state);

  state->crtcs[i].ptr = ((void*)0);
  state->crtcs[i].state = ((void*)0);
  state->crtcs[i].old_state = ((void*)0);
  state->crtcs[i].new_state = ((void*)0);

  if (state->crtcs[i].commit) {
   drm_crtc_commit_put(state->crtcs[i].commit);
   state->crtcs[i].commit = ((void*)0);
  }
 }

 for (i = 0; i < config->num_total_plane; i++) {
  struct drm_plane *plane = state->planes[i].ptr;

  if (!plane)
   continue;

  plane->funcs->atomic_destroy_state(plane,
         state->planes[i].state);
  state->planes[i].ptr = ((void*)0);
  state->planes[i].state = ((void*)0);
  state->planes[i].old_state = ((void*)0);
  state->planes[i].new_state = ((void*)0);
 }

 for (i = 0; i < state->num_private_objs; i++) {
  struct drm_private_obj *obj = state->private_objs[i].ptr;

  obj->funcs->atomic_destroy_state(obj,
       state->private_objs[i].state);
  state->private_objs[i].ptr = ((void*)0);
  state->private_objs[i].state = ((void*)0);
  state->private_objs[i].old_state = ((void*)0);
  state->private_objs[i].new_state = ((void*)0);
 }
 state->num_private_objs = 0;

 if (state->fake_commit) {
  drm_crtc_commit_put(state->fake_commit);
  state->fake_commit = ((void*)0);
 }
}
