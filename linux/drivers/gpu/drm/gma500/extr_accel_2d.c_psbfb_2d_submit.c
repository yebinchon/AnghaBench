
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_psb_private {int lock_2d; } ;


 int PSB_RSGX32 (scalar_t__) ;
 scalar_t__ PSB_SGX_2D_SLAVE_PORT ;
 int PSB_WSGX32 (int ,scalar_t__) ;
 int psb_2d_wait_available (struct drm_psb_private*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int psbfb_2d_submit(struct drm_psb_private *dev_priv, uint32_t *cmdbuf,
        unsigned size)
{
 int ret = 0;
 int i;
 unsigned submit_size;
 unsigned long flags;

 spin_lock_irqsave(&dev_priv->lock_2d, flags);
 while (size > 0) {
  submit_size = (size < 0x60) ? size : 0x60;
  size -= submit_size;
  ret = psb_2d_wait_available(dev_priv, submit_size);
  if (ret)
   break;

  submit_size <<= 2;

  for (i = 0; i < submit_size; i += 4)
   PSB_WSGX32(*cmdbuf++, PSB_SGX_2D_SLAVE_PORT + i);

  (void)PSB_RSGX32(PSB_SGX_2D_SLAVE_PORT + i - 4);
 }
 spin_unlock_irqrestore(&dev_priv->lock_2d, flags);
 return ret;
}
