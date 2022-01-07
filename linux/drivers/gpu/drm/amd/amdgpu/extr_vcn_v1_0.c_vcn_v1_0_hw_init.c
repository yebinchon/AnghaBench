
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ready; } ;
struct amdgpu_ring {TYPE_1__ sched; } ;
struct TYPE_6__ {int num_enc_rings; TYPE_2__* inst; } ;
struct amdgpu_device {int pg_flags; TYPE_3__ vcn; } ;
struct TYPE_5__ {struct amdgpu_ring ring_jpeg; struct amdgpu_ring* ring_enc; struct amdgpu_ring ring_dec; } ;


 int AMD_PG_SUPPORT_VCN_DPG ;
 int DRM_INFO (char*,char*) ;
 int amdgpu_ring_test_helper (struct amdgpu_ring*) ;

__attribute__((used)) static int vcn_v1_0_hw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct amdgpu_ring *ring = &adev->vcn.inst->ring_dec;
 int i, r;

 r = amdgpu_ring_test_helper(ring);
 if (r)
  goto done;

 for (i = 0; i < adev->vcn.num_enc_rings; ++i) {
  ring = &adev->vcn.inst->ring_enc[i];
  ring->sched.ready = 1;
  r = amdgpu_ring_test_helper(ring);
  if (r)
   goto done;
 }

 ring = &adev->vcn.inst->ring_jpeg;
 r = amdgpu_ring_test_helper(ring);
 if (r)
  goto done;

done:
 if (!r)
  DRM_INFO("VCN decode and encode initialized successfully(under %s).\n",
   (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG)?"DPG Mode":"SPG Mode");

 return r;
}
