
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_READ (int ) ;
 int PIPE_CRC_RES_1_IVB (int) ;
 int display_pipe_crc_irq_handler (struct drm_i915_private*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
         enum pipe pipe)
{
 display_pipe_crc_irq_handler(dev_priv, pipe,
         I915_READ(PIPE_CRC_RES_1_IVB(pipe)),
         0, 0, 0, 0);
}
