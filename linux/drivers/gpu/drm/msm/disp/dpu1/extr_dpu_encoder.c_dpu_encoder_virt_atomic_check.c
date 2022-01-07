
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct msm_display_topology {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct drm_display_mode {int private_flags; int flags; } ;
struct drm_crtc_state {struct drm_display_mode adjusted_mode; struct drm_display_mode mode; } ;
struct drm_connector_state {int connector; } ;
struct dpu_kms {int rm; } ;
struct dpu_encoder_virt {int num_phys_encs; int mode_set_complete; struct dpu_encoder_phys** phys_encs; } ;
struct TYPE_4__ {int (* atomic_check ) (struct dpu_encoder_phys*,struct drm_crtc_state*,struct drm_connector_state*) ;int (* mode_fixup ) (struct dpu_encoder_phys*,struct drm_display_mode const*,struct drm_display_mode*) ;} ;
struct dpu_encoder_phys {TYPE_2__ ops; } ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;


 int DPU_DEBUG_ENC (struct dpu_encoder_virt*,char*) ;
 int DPU_ERROR (char*,int,int,int) ;
 int DPU_ERROR_ENC (struct dpu_encoder_virt*,char*,int) ;
 int DRMID (struct drm_encoder*) ;
 int EINVAL ;
 int _dpu_encoder_adjust_mode (int ,struct drm_display_mode*) ;
 struct msm_display_topology dpu_encoder_get_topology (struct dpu_encoder_virt*,struct dpu_kms*,struct drm_display_mode*) ;
 int dpu_rm_reserve (int *,struct drm_encoder*,struct drm_crtc_state*,struct msm_display_topology,int) ;
 scalar_t__ drm_atomic_crtc_needs_modeset (struct drm_crtc_state*) ;
 int stub1 (struct dpu_encoder_phys*,struct drm_crtc_state*,struct drm_connector_state*) ;
 int stub2 (struct dpu_encoder_phys*,struct drm_display_mode const*,struct drm_display_mode*) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;
 struct dpu_kms* to_dpu_kms (int ) ;
 int trace_dpu_enc_atomic_check (int ) ;
 int trace_dpu_enc_atomic_check_flags (int ,int ,int ) ;

__attribute__((used)) static int dpu_encoder_virt_atomic_check(
  struct drm_encoder *drm_enc,
  struct drm_crtc_state *crtc_state,
  struct drm_connector_state *conn_state)
{
 struct dpu_encoder_virt *dpu_enc;
 struct msm_drm_private *priv;
 struct dpu_kms *dpu_kms;
 const struct drm_display_mode *mode;
 struct drm_display_mode *adj_mode;
 struct msm_display_topology topology;
 int i = 0;
 int ret = 0;

 if (!drm_enc || !crtc_state || !conn_state) {
  DPU_ERROR("invalid arg(s), drm_enc %d, crtc/conn state %d/%d\n",
    drm_enc != 0, crtc_state != 0, conn_state != 0);
  return -EINVAL;
 }

 dpu_enc = to_dpu_encoder_virt(drm_enc);
 DPU_DEBUG_ENC(dpu_enc, "\n");

 priv = drm_enc->dev->dev_private;
 dpu_kms = to_dpu_kms(priv->kms);
 mode = &crtc_state->mode;
 adj_mode = &crtc_state->adjusted_mode;
 trace_dpu_enc_atomic_check(DRMID(drm_enc));
 _dpu_encoder_adjust_mode(conn_state->connector, adj_mode);


 for (i = 0; i < dpu_enc->num_phys_encs; i++) {
  struct dpu_encoder_phys *phys = dpu_enc->phys_encs[i];

  if (phys && phys->ops.atomic_check)
   ret = phys->ops.atomic_check(phys, crtc_state,
     conn_state);
  else if (phys && phys->ops.mode_fixup)
   if (!phys->ops.mode_fixup(phys, mode, adj_mode))
    ret = -EINVAL;

  if (ret) {
   DPU_ERROR_ENC(dpu_enc,
     "mode unsupported, phys idx %d\n", i);
   break;
  }
 }

 topology = dpu_encoder_get_topology(dpu_enc, dpu_kms, adj_mode);


 if (!ret) {




  if (drm_atomic_crtc_needs_modeset(crtc_state)
    && dpu_enc->mode_set_complete) {
   ret = dpu_rm_reserve(&dpu_kms->rm, drm_enc, crtc_state,
          topology, 1);
   dpu_enc->mode_set_complete = 0;
  }
 }

 trace_dpu_enc_atomic_check_flags(DRMID(drm_enc), adj_mode->flags,
   adj_mode->private_flags);

 return ret;
}
