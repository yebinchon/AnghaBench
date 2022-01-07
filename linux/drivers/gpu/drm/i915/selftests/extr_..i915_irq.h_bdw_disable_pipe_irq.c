
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int bdw_update_pipe_irq (struct drm_i915_private*,int,int ,int ) ;

__attribute__((used)) static inline void bdw_disable_pipe_irq(struct drm_i915_private *dev_priv,
     enum pipe pipe, u32 bits)
{
 bdw_update_pipe_irq(dev_priv, pipe, bits, 0);
}
