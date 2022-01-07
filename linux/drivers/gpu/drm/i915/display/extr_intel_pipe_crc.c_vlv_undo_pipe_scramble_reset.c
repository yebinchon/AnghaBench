
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DC_BALANCE_RESET_VLV ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;

 int PIPE_A_SCRAMBLE_RESET ;

 int PIPE_B_SCRAMBLE_RESET ;

 int PIPE_C_SCRAMBLE_RESET ;
 int PIPE_SCRAMBLE_RESET_MASK ;
 int PORT_DFT2_G4X ;

__attribute__((used)) static void vlv_undo_pipe_scramble_reset(struct drm_i915_private *dev_priv,
      enum pipe pipe)
{
 u32 tmp = I915_READ(PORT_DFT2_G4X);

 switch (pipe) {
 case 130:
  tmp &= ~PIPE_A_SCRAMBLE_RESET;
  break;
 case 129:
  tmp &= ~PIPE_B_SCRAMBLE_RESET;
  break;
 case 128:
  tmp &= ~PIPE_C_SCRAMBLE_RESET;
  break;
 default:
  return;
 }
 if (!(tmp & PIPE_SCRAMBLE_RESET_MASK))
  tmp &= ~DC_BALANCE_RESET_VLV;
 I915_WRITE(PORT_DFT2_G4X, tmp);
}
