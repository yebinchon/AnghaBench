
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct intel_hdcp_shim {int (* read_v_prime_part ) (struct intel_digital_port*,int,int*) ;} ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct intel_digital_port {TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int sha_text ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*) ;
 int DRM_HDCP_KSV_LEN ;
 int DRM_HDCP_V_PRIME_NUM_PARTS ;
 int EINVAL ;
 int ENXIO ;
 int ETIMEDOUT ;
 int HDCP_REP_CTL ;
 int HDCP_SHA1_COMPLETE ;
 int HDCP_SHA1_COMPLETE_HASH ;
 int HDCP_SHA1_TEXT_0 ;
 int HDCP_SHA1_TEXT_16 ;
 int HDCP_SHA1_TEXT_24 ;
 int HDCP_SHA1_TEXT_32 ;
 int HDCP_SHA1_TEXT_8 ;
 int HDCP_SHA1_V_MATCH ;
 int HDCP_SHA_V_PRIME (int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;
 int intel_hdcp_get_repeater_ctl (struct intel_digital_port*) ;
 int intel_write_sha_text (struct drm_i915_private*,int) ;
 int stub1 (struct intel_digital_port*,int,int*) ;

__attribute__((used)) static
int intel_hdcp_validate_v_prime(struct intel_digital_port *intel_dig_port,
    const struct intel_hdcp_shim *shim,
    u8 *ksv_fifo, u8 num_downstream, u8 *bstatus)
{
 struct drm_i915_private *dev_priv;
 u32 vprime, sha_text, sha_leftovers, rep_ctl;
 int ret, i, j, sha_idx;

 dev_priv = intel_dig_port->base.base.dev->dev_private;


 for (i = 0; i < DRM_HDCP_V_PRIME_NUM_PARTS; i++) {
  ret = shim->read_v_prime_part(intel_dig_port, i, &vprime);
  if (ret)
   return ret;
  I915_WRITE(HDCP_SHA_V_PRIME(i), vprime);
 }
 sha_idx = 0;
 sha_text = 0;
 sha_leftovers = 0;
 rep_ctl = intel_hdcp_get_repeater_ctl(intel_dig_port);
 I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
 for (i = 0; i < num_downstream; i++) {
  unsigned int sha_empty;
  u8 *ksv = &ksv_fifo[i * DRM_HDCP_KSV_LEN];


  sha_empty = sizeof(sha_text) - sha_leftovers;
  for (j = 0; j < sha_empty; j++)
   sha_text |= ksv[j] << ((sizeof(sha_text) - j - 1) * 8);

  ret = intel_write_sha_text(dev_priv, sha_text);
  if (ret < 0)
   return ret;


  sha_idx += sizeof(sha_text);
  if (!(sha_idx % 64))
   I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);


  sha_leftovers = DRM_HDCP_KSV_LEN - sha_empty;
  sha_text = 0;
  for (j = 0; j < sha_leftovers; j++)
   sha_text |= ksv[sha_empty + j] <<
     ((sizeof(sha_text) - j - 1) * 8);





  if (sizeof(sha_text) > sha_leftovers)
   continue;

  ret = intel_write_sha_text(dev_priv, sha_text);
  if (ret < 0)
   return ret;
  sha_leftovers = 0;
  sha_text = 0;
  sha_idx += sizeof(sha_text);
 }







 if (sha_leftovers == 0) {

  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_16);
  ret = intel_write_sha_text(dev_priv,
        bstatus[0] << 8 | bstatus[1]);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);


  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
  ret = intel_write_sha_text(dev_priv, 0);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);


  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_16);
  ret = intel_write_sha_text(dev_priv, 0);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);

 } else if (sha_leftovers == 1) {

  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_24);
  sha_text |= bstatus[0] << 16 | bstatus[1] << 8;

  sha_text = (sha_text & 0xffffff00) >> 8;
  ret = intel_write_sha_text(dev_priv, sha_text);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);


  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
  ret = intel_write_sha_text(dev_priv, 0);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);


  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_8);
  ret = intel_write_sha_text(dev_priv, 0);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);

 } else if (sha_leftovers == 2) {

  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
  sha_text |= bstatus[0] << 24 | bstatus[1] << 16;
  ret = intel_write_sha_text(dev_priv, sha_text);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);


  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
  for (i = 0; i < 2; i++) {
   ret = intel_write_sha_text(dev_priv, 0);
   if (ret < 0)
    return ret;
   sha_idx += sizeof(sha_text);
  }
 } else if (sha_leftovers == 3) {

  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
  sha_text |= bstatus[0] << 24;
  ret = intel_write_sha_text(dev_priv, sha_text);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);


  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_8);
  ret = intel_write_sha_text(dev_priv, bstatus[1]);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);


  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
  ret = intel_write_sha_text(dev_priv, 0);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);


  I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_24);
  ret = intel_write_sha_text(dev_priv, 0);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);
 } else {
  DRM_DEBUG_KMS("Invalid number of leftovers %d\n",
         sha_leftovers);
  return -EINVAL;
 }

 I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);

 while ((sha_idx % 64) < (64 - sizeof(sha_text))) {
  ret = intel_write_sha_text(dev_priv, 0);
  if (ret < 0)
   return ret;
  sha_idx += sizeof(sha_text);
 }






 sha_text = (num_downstream * 5 + 10) * 8;
 ret = intel_write_sha_text(dev_priv, sha_text);
 if (ret < 0)
  return ret;


 I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_COMPLETE_HASH);
 if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL,
      HDCP_SHA1_COMPLETE, 1)) {
  DRM_ERROR("Timed out waiting for SHA1 complete\n");
  return -ETIMEDOUT;
 }
 if (!(I915_READ(HDCP_REP_CTL) & HDCP_SHA1_V_MATCH)) {
  DRM_DEBUG_KMS("SHA-1 mismatch, HDCP failed\n");
  return -ENXIO;
 }

 return 0;
}
