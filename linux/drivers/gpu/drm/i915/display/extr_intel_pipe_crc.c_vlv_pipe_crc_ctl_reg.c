
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
typedef enum intel_pipe_crc_source { ____Placeholder_intel_pipe_crc_source } intel_pipe_crc_source ;


 int DC_BALANCE_RESET_VLV ;
 int EINVAL ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_PIPE_CRC_SOURCE_AUTO ;





 int IS_CHERRYVIEW (struct drm_i915_private*) ;

 int PIPE_A_SCRAMBLE_RESET ;

 int PIPE_B_SCRAMBLE_RESET ;

 int PIPE_CRC_ENABLE ;
 int PIPE_CRC_SOURCE_DP_B_VLV ;
 int PIPE_CRC_SOURCE_DP_C_VLV ;
 int PIPE_CRC_SOURCE_DP_D_VLV ;
 int PIPE_CRC_SOURCE_PIPE_VLV ;
 int PIPE_C_SCRAMBLE_RESET ;
 int PORT_DFT2_G4X ;
 int i9xx_pipe_crc_auto_source (struct drm_i915_private*,int,int*) ;

__attribute__((used)) static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
    enum pipe pipe,
    enum intel_pipe_crc_source *source,
    u32 *val)
{
 bool need_stable_symbols = 0;

 if (*source == INTEL_PIPE_CRC_SOURCE_AUTO) {
  int ret = i9xx_pipe_crc_auto_source(dev_priv, pipe, source);
  if (ret)
   return ret;
 }

 switch (*source) {
 case 131:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PIPE_VLV;
  break;
 case 135:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_DP_B_VLV;
  need_stable_symbols = 1;
  break;
 case 134:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_DP_C_VLV;
  need_stable_symbols = 1;
  break;
 case 133:
  if (!IS_CHERRYVIEW(dev_priv))
   return -EINVAL;
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_DP_D_VLV;
  need_stable_symbols = 1;
  break;
 case 132:
  *val = 0;
  break;
 default:
  return -EINVAL;
 }
 if (need_stable_symbols) {
  u32 tmp = I915_READ(PORT_DFT2_G4X);

  tmp |= DC_BALANCE_RESET_VLV;
  switch (pipe) {
  case 130:
   tmp |= PIPE_A_SCRAMBLE_RESET;
   break;
  case 129:
   tmp |= PIPE_B_SCRAMBLE_RESET;
   break;
  case 128:
   tmp |= PIPE_C_SCRAMBLE_RESET;
   break;
  default:
   return -EINVAL;
  }
  I915_WRITE(PORT_DFT2_G4X, tmp);
 }

 return 0;
}
