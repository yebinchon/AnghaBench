
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int dummy; } ;
struct malidp_mw_connector_state {struct drm_connector_state base; int rgb2yuv_initialized; int rgb2yuv_coeffs; } ;
struct drm_connector {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_connector_duplicate_state (struct drm_connector*,struct drm_connector_state*) ;
 struct malidp_mw_connector_state* kzalloc (int,int ) ;
 struct malidp_mw_connector_state* to_mw_state (int ) ;

__attribute__((used)) static struct drm_connector_state *
malidp_mw_connector_duplicate_state(struct drm_connector *connector)
{
 struct malidp_mw_connector_state *mw_state, *mw_current_state;

 if (WARN_ON(!connector->state))
  return ((void*)0);

 mw_state = kzalloc(sizeof(*mw_state), GFP_KERNEL);
 if (!mw_state)
  return ((void*)0);

 mw_current_state = to_mw_state(connector->state);
 mw_state->rgb2yuv_coeffs = mw_current_state->rgb2yuv_coeffs;
 mw_state->rgb2yuv_initialized = mw_current_state->rgb2yuv_initialized;

 __drm_atomic_helper_connector_duplicate_state(connector, &mw_state->base);

 return &mw_state->base;
}
