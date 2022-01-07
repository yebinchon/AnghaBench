
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_kiq {int ring_lock; struct amdgpu_ring ring; } ;
struct TYPE_2__ {struct amdgpu_kiq kiq; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int MAX_KIQ_REG_BAILOUT_INTERVAL ;
 long MAX_KIQ_REG_TRY ;
 int MAX_KIQ_REG_WAIT ;
 int amdgpu_fence_emit_polling (struct amdgpu_ring*,int *) ;
 long amdgpu_fence_wait_polling (struct amdgpu_ring*,int ,int ) ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_commit (struct amdgpu_ring*) ;
 int amdgpu_ring_emit_reg_write_reg_wait (struct amdgpu_ring*,int ,int ,int ,int ) ;
 scalar_t__ in_interrupt () ;
 int might_sleep () ;
 int msleep (int ) ;
 int pr_err (char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void amdgpu_virt_kiq_reg_write_reg_wait(struct amdgpu_device *adev,
     uint32_t reg0, uint32_t reg1,
     uint32_t ref, uint32_t mask)
{
 struct amdgpu_kiq *kiq = &adev->gfx.kiq;
 struct amdgpu_ring *ring = &kiq->ring;
 signed long r, cnt = 0;
 unsigned long flags;
 uint32_t seq;

 spin_lock_irqsave(&kiq->ring_lock, flags);
 amdgpu_ring_alloc(ring, 32);
 amdgpu_ring_emit_reg_write_reg_wait(ring, reg0, reg1,
         ref, mask);
 amdgpu_fence_emit_polling(ring, &seq);
 amdgpu_ring_commit(ring);
 spin_unlock_irqrestore(&kiq->ring_lock, flags);

 r = amdgpu_fence_wait_polling(ring, seq, MAX_KIQ_REG_WAIT);


 if (r < 1 && in_interrupt())
  goto failed_kiq;

 might_sleep();
 while (r < 1 && cnt++ < MAX_KIQ_REG_TRY) {

  msleep(MAX_KIQ_REG_BAILOUT_INTERVAL);
  r = amdgpu_fence_wait_polling(ring, seq, MAX_KIQ_REG_WAIT);
 }

 if (cnt > MAX_KIQ_REG_TRY)
  goto failed_kiq;

 return;

failed_kiq:
 pr_err("failed to write reg %x wait reg %x\n", reg0, reg1);
}
