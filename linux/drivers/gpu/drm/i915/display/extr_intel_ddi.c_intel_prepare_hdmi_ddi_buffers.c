
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int dev; } ;
struct intel_encoder {int port; TYPE_3__ base; } ;
struct TYPE_5__ {TYPE_1__* ddi_port_info; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct ddi_buf_trans {int trans1; int trans2; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_4__ {scalar_t__ hdmi_boost_level; } ;


 int DDI_BUF_BALANCE_LEG_ENABLE ;
 int DDI_BUF_TRANS_HI (int,int) ;
 int DDI_BUF_TRANS_LO (int,int) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct ddi_buf_trans* intel_ddi_get_buf_trans_hdmi (struct drm_i915_private*,int*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
        int level)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 iboost_bit = 0;
 int n_entries;
 enum port port = encoder->port;
 const struct ddi_buf_trans *ddi_translations;

 ddi_translations = intel_ddi_get_buf_trans_hdmi(dev_priv, &n_entries);

 if (WARN_ON_ONCE(!ddi_translations))
  return;
 if (WARN_ON_ONCE(level >= n_entries))
  level = n_entries - 1;


 if (IS_GEN9_BC(dev_priv) &&
     dev_priv->vbt.ddi_port_info[port].hdmi_boost_level)
  iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;


 I915_WRITE(DDI_BUF_TRANS_LO(port, 9),
     ddi_translations[level].trans1 | iboost_bit);
 I915_WRITE(DDI_BUF_TRANS_HI(port, 9),
     ddi_translations[level].trans2);
}
