
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {struct drm_connector* private; } ;
struct intel_dp {int fec_capable; int force_dsc_en; int dsc_dpcd; } ;
struct TYPE_7__ {int compression_enable; } ;
struct intel_crtc_state {TYPE_3__ dsc_params; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_5__ {int connection_mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_crtc {int state; int mutex; } ;
struct drm_connector {scalar_t__ status; TYPE_2__* state; struct drm_device* dev; } ;
struct TYPE_8__ {int base; } ;
struct TYPE_6__ {struct drm_crtc* crtc; } ;


 int DRM_MODESET_ACQUIRE_INTERRUPTIBLE ;
 int EDEADLK ;
 int ENODEV ;
 scalar_t__ connector_status_connected ;
 int drm_dp_sink_supports_dsc (int ) ;
 int drm_dp_sink_supports_fec (int ) ;
 int drm_modeset_acquire_fini (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_acquire_init (struct drm_modeset_acquire_ctx*,int ) ;
 int drm_modeset_backoff (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_drop_locks (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_lock (int *,struct drm_modeset_acquire_ctx*) ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 TYPE_4__* intel_attached_encoder (struct drm_connector*) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 struct intel_crtc_state* to_intel_crtc_state (int ) ;
 int yesno (int ) ;

__attribute__((used)) static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
{
 struct drm_connector *connector = m->private;
 struct drm_device *dev = connector->dev;
 struct drm_crtc *crtc;
 struct intel_dp *intel_dp;
 struct drm_modeset_acquire_ctx ctx;
 struct intel_crtc_state *crtc_state = ((void*)0);
 int ret = 0;
 bool try_again = 0;

 drm_modeset_acquire_init(&ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE);

 do {
  try_again = 0;
  ret = drm_modeset_lock(&dev->mode_config.connection_mutex,
           &ctx);
  if (ret) {
   if (ret == -EDEADLK && !drm_modeset_backoff(&ctx)) {
    try_again = 1;
    continue;
   }
   break;
  }
  crtc = connector->state->crtc;
  if (connector->status != connector_status_connected || !crtc) {
   ret = -ENODEV;
   break;
  }
  ret = drm_modeset_lock(&crtc->mutex, &ctx);
  if (ret == -EDEADLK) {
   ret = drm_modeset_backoff(&ctx);
   if (!ret) {
    try_again = 1;
    continue;
   }
   break;
  } else if (ret) {
   break;
  }
  intel_dp = enc_to_intel_dp(&intel_attached_encoder(connector)->base);
  crtc_state = to_intel_crtc_state(crtc->state);
  seq_printf(m, "DSC_Enabled: %s\n",
      yesno(crtc_state->dsc_params.compression_enable));
  seq_printf(m, "DSC_Sink_Support: %s\n",
      yesno(drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)));
  seq_printf(m, "Force_DSC_Enable: %s\n",
      yesno(intel_dp->force_dsc_en));
  if (!intel_dp_is_edp(intel_dp))
   seq_printf(m, "FEC_Sink_Support: %s\n",
       yesno(drm_dp_sink_supports_fec(intel_dp->fec_capable)));
 } while (try_again);

 drm_modeset_drop_locks(&ctx);
 drm_modeset_acquire_fini(&ctx);

 return ret;
}
