
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int* pipestat_irq_mask; int irq_lock; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int PIPESTAT_INT_ENABLE_MASK ;
 int PIPESTAT_INT_STATUS_MASK ;
 int PIPE_A_PSR_STATUS_VLV ;
 int PIPE_B_PSR_STATUS_VLV ;
 int PIPE_FIFO_UNDERRUN_STATUS ;
 int SPRITE0_FLIP_DONE_INT_EN_VLV ;
 int SPRITE0_FLIP_DONE_INT_STATUS_VLV ;
 int SPRITE1_FLIP_DONE_INT_EN_VLV ;
 int SPRITE1_FLIP_DONE_INT_STATUS_VLV ;
 int WARN_ONCE (int,char*,int ,int,int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int lockdep_assert_held (int *) ;
 int pipe_name (int) ;

u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
         enum pipe pipe)
{
 u32 status_mask = dev_priv->pipestat_irq_mask[pipe];
 u32 enable_mask = status_mask << 16;

 lockdep_assert_held(&dev_priv->irq_lock);

 if (INTEL_GEN(dev_priv) < 5)
  goto out;





 if (WARN_ON_ONCE(status_mask & PIPE_A_PSR_STATUS_VLV))
  return 0;




 if (WARN_ON_ONCE(status_mask & PIPE_B_PSR_STATUS_VLV))
  return 0;

 enable_mask &= ~(PIPE_FIFO_UNDERRUN_STATUS |
    SPRITE0_FLIP_DONE_INT_EN_VLV |
    SPRITE1_FLIP_DONE_INT_EN_VLV);
 if (status_mask & SPRITE0_FLIP_DONE_INT_STATUS_VLV)
  enable_mask |= SPRITE0_FLIP_DONE_INT_EN_VLV;
 if (status_mask & SPRITE1_FLIP_DONE_INT_STATUS_VLV)
  enable_mask |= SPRITE1_FLIP_DONE_INT_EN_VLV;

out:
 WARN_ONCE(enable_mask & ~PIPESTAT_INT_ENABLE_MASK ||
    status_mask & ~PIPESTAT_INT_STATUS_MASK,
    "pipe %c: enable_mask=0x%x, status_mask=0x%x\n",
    pipe_name(pipe), enable_mask, status_mask);

 return enable_mask;
}
