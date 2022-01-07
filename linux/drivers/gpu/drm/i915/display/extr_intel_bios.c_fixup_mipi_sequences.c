
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_5__ {int seq_version; size_t** sequence; size_t* deassert_seq; TYPE_1__* config; } ;
struct TYPE_6__ {TYPE_2__ dsi; } ;
struct drm_i915_private {TYPE_3__ vbt; } ;
struct TYPE_4__ {scalar_t__ is_cmd_mode; } ;


 int DRM_DEBUG_KMS (char*) ;
 int GFP_KERNEL ;
 int IS_VALLEYVIEW (struct drm_i915_private*) ;
 size_t MIPI_SEQ_ASSERT_RESET ;
 size_t MIPI_SEQ_DEASSERT_RESET ;
 size_t MIPI_SEQ_ELEM_END ;
 size_t MIPI_SEQ_INIT_OTP ;
 int get_init_otp_deassert_fragment_len (struct drm_i915_private*) ;
 size_t* kmemdup (size_t*,int,int ) ;

__attribute__((used)) static void fixup_mipi_sequences(struct drm_i915_private *dev_priv)
{
 u8 *init_otp;
 int len;


 if (!IS_VALLEYVIEW(dev_priv))
  return;


 if (dev_priv->vbt.dsi.config->is_cmd_mode ||
     dev_priv->vbt.dsi.seq_version != 1)
  return;


 if (!dev_priv->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] ||
     !dev_priv->vbt.dsi.sequence[MIPI_SEQ_ASSERT_RESET] ||
     dev_priv->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET])
  return;


 len = get_init_otp_deassert_fragment_len(dev_priv);
 if (!len)
  return;

 DRM_DEBUG_KMS("Using init OTP fragment to deassert reset\n");


 init_otp = (u8 *)dev_priv->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP];
 dev_priv->vbt.dsi.deassert_seq = kmemdup(init_otp, len + 1, GFP_KERNEL);
 if (!dev_priv->vbt.dsi.deassert_seq)
  return;
 dev_priv->vbt.dsi.deassert_seq[0] = MIPI_SEQ_DEASSERT_RESET;
 dev_priv->vbt.dsi.deassert_seq[len] = MIPI_SEQ_ELEM_END;

 dev_priv->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET] =
  dev_priv->vbt.dsi.deassert_seq;

 init_otp[len - 1] = MIPI_SEQ_INIT_OTP;

 dev_priv->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] = init_otp + len - 1;
}
