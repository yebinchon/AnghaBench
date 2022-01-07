
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_ring {int use_doorbell; int me; int pipe; int queue; int name; int eop_gpu_addr; int doorbell_index; int * ring_obj; int * adev; } ;
struct amdgpu_kiq {int eop_gpu_addr; int ring_lock; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_6__ {int kiq; } ;
struct TYPE_5__ {int reg_val_offs; } ;
struct TYPE_4__ {struct amdgpu_kiq kiq; } ;
struct amdgpu_device {int dev; TYPE_3__ doorbell_index; TYPE_2__ virt; TYPE_1__ gfx; } ;


 int AMDGPU_CP_KIQ_IRQ_DRIVER0 ;
 int amdgpu_device_wb_get (struct amdgpu_device*,int *) ;
 int amdgpu_gfx_kiq_acquire (struct amdgpu_device*,struct amdgpu_ring*) ;
 int amdgpu_ring_init (struct amdgpu_device*,struct amdgpu_ring*,int,struct amdgpu_irq_src*,int ) ;
 int dev_warn (int ,char*,int) ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int,int,int) ;

int amdgpu_gfx_kiq_init_ring(struct amdgpu_device *adev,
        struct amdgpu_ring *ring,
        struct amdgpu_irq_src *irq)
{
 struct amdgpu_kiq *kiq = &adev->gfx.kiq;
 int r = 0;

 spin_lock_init(&kiq->ring_lock);

 r = amdgpu_device_wb_get(adev, &adev->virt.reg_val_offs);
 if (r)
  return r;

 ring->adev = ((void*)0);
 ring->ring_obj = ((void*)0);
 ring->use_doorbell = 1;
 ring->doorbell_index = adev->doorbell_index.kiq;

 r = amdgpu_gfx_kiq_acquire(adev, ring);
 if (r)
  return r;

 ring->eop_gpu_addr = kiq->eop_gpu_addr;
 sprintf(ring->name, "kiq_%d.%d.%d", ring->me, ring->pipe, ring->queue);
 r = amdgpu_ring_init(adev, ring, 1024,
        irq, AMDGPU_CP_KIQ_IRQ_DRIVER0);
 if (r)
  dev_warn(adev->dev, "(%d) failed to init kiq ring\n", r);

 return r;
}
