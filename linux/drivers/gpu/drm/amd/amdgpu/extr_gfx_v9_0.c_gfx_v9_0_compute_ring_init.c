
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_ring {int me; int pipe; int queue; int use_doorbell; int doorbell_index; int name; scalar_t__ eop_gpu_addr; int * ring_obj; } ;
struct TYPE_5__ {int num_pipe_per_mec; scalar_t__ hpd_eop_gpu_addr; } ;
struct TYPE_6__ {int eop_irq; TYPE_2__ mec; struct amdgpu_ring* compute_ring; } ;
struct TYPE_4__ {int mec_ring0; } ;
struct amdgpu_device {TYPE_3__ gfx; TYPE_1__ doorbell_index; } ;


 int AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP ;
 int GFX9_MEC_HPD_SIZE ;
 int amdgpu_ring_init (struct amdgpu_device*,struct amdgpu_ring*,int,int *,unsigned int) ;
 int sprintf (int ,char*,int,int,int) ;

__attribute__((used)) static int gfx_v9_0_compute_ring_init(struct amdgpu_device *adev, int ring_id,
          int mec, int pipe, int queue)
{
 int r;
 unsigned irq_type;
 struct amdgpu_ring *ring = &adev->gfx.compute_ring[ring_id];

 ring = &adev->gfx.compute_ring[ring_id];


 ring->me = mec + 1;
 ring->pipe = pipe;
 ring->queue = queue;

 ring->ring_obj = ((void*)0);
 ring->use_doorbell = 1;
 ring->doorbell_index = (adev->doorbell_index.mec_ring0 + ring_id) << 1;
 ring->eop_gpu_addr = adev->gfx.mec.hpd_eop_gpu_addr
    + (ring_id * GFX9_MEC_HPD_SIZE);
 sprintf(ring->name, "comp_%d.%d.%d", ring->me, ring->pipe, ring->queue);

 irq_type = AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP
  + ((ring->me - 1) * adev->gfx.mec.num_pipe_per_mec)
  + ring->pipe;


 r = amdgpu_ring_init(adev, ring, 1024,
        &adev->gfx.eop_irq, irq_type);
 if (r)
  return r;


 return 0;
}
