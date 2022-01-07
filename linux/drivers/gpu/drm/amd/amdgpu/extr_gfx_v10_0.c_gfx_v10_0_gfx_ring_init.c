
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {int me; int pipe; int queue; int use_doorbell; int doorbell_index; int name; int * ring_obj; } ;
struct TYPE_4__ {int eop_irq; struct amdgpu_ring* gfx_ring; } ;
struct TYPE_3__ {int gfx_ring0; int gfx_ring1; } ;
struct amdgpu_device {TYPE_2__ gfx; TYPE_1__ doorbell_index; } ;


 unsigned int AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP ;
 int amdgpu_ring_init (struct amdgpu_device*,struct amdgpu_ring*,int,int *,unsigned int) ;
 int sprintf (int ,char*,int,int,int) ;

__attribute__((used)) static int gfx_v10_0_gfx_ring_init(struct amdgpu_device *adev, int ring_id,
       int me, int pipe, int queue)
{
 int r;
 struct amdgpu_ring *ring;
 unsigned int irq_type;

 ring = &adev->gfx.gfx_ring[ring_id];

 ring->me = me;
 ring->pipe = pipe;
 ring->queue = queue;

 ring->ring_obj = ((void*)0);
 ring->use_doorbell = 1;

 if (!ring_id)
  ring->doorbell_index = adev->doorbell_index.gfx_ring0 << 1;
 else
  ring->doorbell_index = adev->doorbell_index.gfx_ring1 << 1;
 sprintf(ring->name, "gfx_%d.%d.%d", ring->me, ring->pipe, ring->queue);

 irq_type = AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP + ring->pipe;
 r = amdgpu_ring_init(adev, ring, 1024,
        &adev->gfx.eop_irq, irq_type);
 if (r)
  return r;
 return 0;
}
