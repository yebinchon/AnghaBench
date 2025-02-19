
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef void* u16 ;
struct drm_property_blob {int color_mgmt_changed; int gamma_lut; int ctm; int degamma_lut; struct drm_color_lut* data; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc_state {int color_mgmt_changed; int gamma_lut; int ctm; int degamma_lut; struct drm_color_lut* data; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_color_lut {void* blue; void* green; void* red; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct drm_property_blob*) ;
 int PTR_ERR (struct drm_property_blob*) ;
 int drm_atomic_commit (struct drm_atomic_state*) ;
 struct drm_property_blob* drm_atomic_get_crtc_state (struct drm_atomic_state*,struct drm_crtc*) ;
 struct drm_atomic_state* drm_atomic_state_alloc (struct drm_device*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 int drm_property_blob_put (struct drm_property_blob*) ;
 struct drm_property_blob* drm_property_create_blob (struct drm_device*,int,int *) ;
 int drm_property_replace_blob (int *,struct drm_property_blob*) ;

int drm_atomic_helper_legacy_gamma_set(struct drm_crtc *crtc,
           u16 *red, u16 *green, u16 *blue,
           uint32_t size,
           struct drm_modeset_acquire_ctx *ctx)
{
 struct drm_device *dev = crtc->dev;
 struct drm_atomic_state *state;
 struct drm_crtc_state *crtc_state;
 struct drm_property_blob *blob = ((void*)0);
 struct drm_color_lut *blob_data;
 int i, ret = 0;
 bool replaced;

 state = drm_atomic_state_alloc(crtc->dev);
 if (!state)
  return -ENOMEM;

 blob = drm_property_create_blob(dev,
     sizeof(struct drm_color_lut) * size,
     ((void*)0));
 if (IS_ERR(blob)) {
  ret = PTR_ERR(blob);
  blob = ((void*)0);
  goto fail;
 }


 blob_data = blob->data;
 for (i = 0; i < size; i++) {
  blob_data[i].red = red[i];
  blob_data[i].green = green[i];
  blob_data[i].blue = blue[i];
 }

 state->acquire_ctx = ctx;
 crtc_state = drm_atomic_get_crtc_state(state, crtc);
 if (IS_ERR(crtc_state)) {
  ret = PTR_ERR(crtc_state);
  goto fail;
 }


 replaced = drm_property_replace_blob(&crtc_state->degamma_lut, ((void*)0));
 replaced |= drm_property_replace_blob(&crtc_state->ctm, ((void*)0));
 replaced |= drm_property_replace_blob(&crtc_state->gamma_lut, blob);
 crtc_state->color_mgmt_changed |= replaced;

 ret = drm_atomic_commit(state);

fail:
 drm_atomic_state_put(state);
 drm_property_blob_put(blob);
 return ret;
}
