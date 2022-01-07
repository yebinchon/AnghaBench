
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb_intel_sdvo {int saveSDVO; int sdvo_reg; } ;
struct drm_encoder {struct drm_crtc* crtc; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int y; int x; int mode; } ;
struct drm_connector {scalar_t__ status; struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_encoder base; } ;


 int REG_WRITE (int ,int ) ;
 scalar_t__ connector_status_connected ;
 int drm_crtc_helper_set_mode (struct drm_crtc*,int *,int ,int ,int *) ;
 TYPE_1__* gma_attached_encoder (struct drm_connector*) ;
 struct psb_intel_sdvo* to_psb_intel_sdvo (struct drm_encoder*) ;

__attribute__((used)) static void psb_intel_sdvo_restore(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_encoder *encoder = &gma_attached_encoder(connector)->base;
 struct psb_intel_sdvo *sdvo = to_psb_intel_sdvo(encoder);
 struct drm_crtc *crtc = encoder->crtc;

 REG_WRITE(sdvo->sdvo_reg, sdvo->saveSDVO);



 if (connector->status == connector_status_connected)
  drm_crtc_helper_set_mode(crtc, &crtc->mode, crtc->x, crtc->y,
      ((void*)0));
}
