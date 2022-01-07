
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {TYPE_2__* funcs; } ;
struct amdgpu_kiq {int ring_lock; struct amdgpu_ring ring; } ;
struct TYPE_3__ {struct amdgpu_kiq kiq; } ;
struct amdgpu_device {scalar_t__ in_gpu_reset; TYPE_1__ gfx; } ;
struct TYPE_4__ {int emit_wreg; } ;


 int BUG_ON (int) ;
 int MAX_KIQ_REG_BAILOUT_INTERVAL ;
 long MAX_KIQ_REG_TRY ;
 int MAX_KIQ_REG_WAIT ;
 int amdgpu_fence_emit_polling (struct amdgpu_ring*,int *) ;
 long amdgpu_fence_wait_polling (struct amdgpu_ring*,int ,int ) ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_commit (struct amdgpu_ring*) ;
 int amdgpu_ring_emit_wreg (struct amdgpu_ring*,int ,int ) ;
 scalar_t__ in_interrupt () ;
 int might_sleep () ;
 int msleep (int ) ;
 int pr_err (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void amdgpu_virt_kiq_wreg(struct amdgpu_device *adev, uint32_t reg, uint32_t v)
{
 signed long r, cnt = 0;
 unsigned long flags;
 uint32_t seq;
 struct amdgpu_kiq *kiq = &adev->gfx.kiq;
 struct amdgpu_ring *ring = &kiq->ring;

 BUG_ON(!ring->funcs->emit_wreg);

 spin_lock_irqsave(&kiq->ring_lock, flags);
 amdgpu_ring_alloc(ring, 32);
 amdgpu_ring_emit_wreg(ring, reg, v);
 amdgpu_fence_emit_polling(ring, &seq);
 amdgpu_ring_commit(ring);
 spin_unlock_irqrestore(&kiq->ring_lock, flags);

 r = amdgpu_fence_wait_polling(ring, seq, MAX_KIQ_REG_WAIT);
 if (r < 1 && (adev->in_gpu_reset || in_interrupt()))
  goto failed_kiq_write;

 might_sleep();
 while (r < 1 && cnt++ < MAX_KIQ_REG_TRY) {

  msleep(MAX_KIQ_REG_BAILOUT_INTERVAL);
  r = amdgpu_fence_wait_polling(ring, seq, MAX_KIQ_REG_WAIT);
 }

 if (cnt > MAX_KIQ_REG_TRY)
  goto failed_kiq_write;

 return;

failed_kiq_write:
 pr_err("failed to write reg:%x\n", reg);
}
