
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ready; } ;
struct amdgpu_ring {TYPE_4__ sched; int doorbell_index; int use_doorbell; } ;
struct TYPE_7__ {int num_vcn_inst; int harvest_config; int num_enc_rings; TYPE_2__* inst; } ;
struct amdgpu_device {TYPE_3__ vcn; TYPE_1__* nbio_funcs; } ;
struct TYPE_6__ {struct amdgpu_ring ring_jpeg; struct amdgpu_ring* ring_enc; struct amdgpu_ring ring_dec; } ;
struct TYPE_5__ {int (* vcn_doorbell_range ) (struct amdgpu_device*,int ,int ,int) ;} ;


 int DRM_INFO (char*) ;
 int amdgpu_ring_test_ring (struct amdgpu_ring*) ;
 int stub1 (struct amdgpu_device*,int ,int ,int) ;

__attribute__((used)) static int vcn_v2_5_hw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct amdgpu_ring *ring;
 int i, j, r;

 for (j = 0; j < adev->vcn.num_vcn_inst; ++j) {
  if (adev->vcn.harvest_config & (1 << j))
   continue;
  ring = &adev->vcn.inst[j].ring_dec;

  adev->nbio_funcs->vcn_doorbell_range(adev, ring->use_doorbell,
           ring->doorbell_index, j);

  r = amdgpu_ring_test_ring(ring);
  if (r) {
   ring->sched.ready = 0;
   goto done;
  }

  for (i = 0; i < adev->vcn.num_enc_rings; ++i) {
   ring = &adev->vcn.inst[j].ring_enc[i];
   ring->sched.ready = 0;
   continue;
   r = amdgpu_ring_test_ring(ring);
   if (r) {
    ring->sched.ready = 0;
    goto done;
   }
  }

  ring = &adev->vcn.inst[j].ring_jpeg;
  r = amdgpu_ring_test_ring(ring);
  if (r) {
   ring->sched.ready = 0;
   goto done;
  }
 }
done:
 if (!r)
  DRM_INFO("VCN decode and encode initialized successfully.\n");

 return r;
}
