
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {TYPE_2__* adev; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_3__ {int reg_val_offs; } ;
struct TYPE_4__ {TYPE_1__ virt; } ;


 int amdgpu_device_wb_free (TYPE_2__*,int ) ;
 int amdgpu_ring_fini (struct amdgpu_ring*) ;

void amdgpu_gfx_kiq_free_ring(struct amdgpu_ring *ring,
         struct amdgpu_irq_src *irq)
{
 amdgpu_device_wb_free(ring->adev, ring->adev->virt.reg_val_offs);
 amdgpu_ring_fini(ring);
}
