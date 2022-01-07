
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_dp {TYPE_2__** mst_encoders; } ;
struct intel_crtc {size_t pipe; } ;
struct intel_connector {struct intel_dp* mst_port; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector_state {int crtc; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {struct drm_encoder base; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 struct intel_connector* to_intel_connector (struct drm_connector*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static struct drm_encoder *intel_mst_atomic_best_encoder(struct drm_connector *connector,
        struct drm_connector_state *state)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);
 struct intel_dp *intel_dp = intel_connector->mst_port;
 struct intel_crtc *crtc = to_intel_crtc(state->crtc);

 return &intel_dp->mst_encoders[crtc->pipe]->base.base;
}
