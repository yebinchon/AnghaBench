
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ddi_port_info; } ;
struct drm_i915_private {TYPE_3__ vbt; } ;
struct ddi_buf_trans {int trans1; int trans2; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_5__ {scalar_t__ dp_boost_level; } ;


 int DDI_BUF_BALANCE_LEG_ENABLE ;
 int DDI_BUF_TRANS_HI (int,int) ;
 int DDI_BUF_TRANS_LO (int,int) ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_ANALOG ;
 int INTEL_OUTPUT_EDP ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 struct ddi_buf_trans* intel_ddi_get_buf_trans_dp (struct drm_i915_private*,int,int*) ;
 struct ddi_buf_trans* intel_ddi_get_buf_trans_edp (struct drm_i915_private*,int,int*) ;
 struct ddi_buf_trans* intel_ddi_get_buf_trans_fdi (struct drm_i915_private*,int*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 iboost_bit = 0;
 int i, n_entries;
 enum port port = encoder->port;
 const struct ddi_buf_trans *ddi_translations;

 if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG))
  ddi_translations = intel_ddi_get_buf_trans_fdi(dev_priv,
              &n_entries);
 else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
  ddi_translations = intel_ddi_get_buf_trans_edp(dev_priv, port,
              &n_entries);
 else
  ddi_translations = intel_ddi_get_buf_trans_dp(dev_priv, port,
             &n_entries);


 if (IS_GEN9_BC(dev_priv) &&
     dev_priv->vbt.ddi_port_info[port].dp_boost_level)
  iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;

 for (i = 0; i < n_entries; i++) {
  I915_WRITE(DDI_BUF_TRANS_LO(port, i),
      ddi_translations[i].trans1 | iboost_bit);
  I915_WRITE(DDI_BUF_TRANS_HI(port, i),
      ddi_translations[i].trans2);
 }
}
