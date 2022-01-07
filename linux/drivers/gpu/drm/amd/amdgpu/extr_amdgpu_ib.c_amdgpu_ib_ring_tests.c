
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int ready; } ;
struct amdgpu_ring {int name; TYPE_4__ sched; TYPE_3__* funcs; } ;
struct TYPE_10__ {struct amdgpu_ring* gfx_ring; } ;
struct TYPE_6__ {scalar_t__ hive_id; } ;
struct TYPE_7__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {unsigned int num_rings; int accel_working; TYPE_5__ gfx; int dev; struct amdgpu_ring** rings; TYPE_2__ gmc; } ;
struct TYPE_8__ {scalar_t__ type; int test_ib; } ;


 long AMDGPU_IB_TEST_GFX_XGMI_TIMEOUT ;
 int AMDGPU_IB_TEST_TIMEOUT ;
 scalar_t__ AMDGPU_RING_TYPE_UVD ;
 scalar_t__ AMDGPU_RING_TYPE_UVD_ENC ;
 scalar_t__ AMDGPU_RING_TYPE_VCE ;
 scalar_t__ AMDGPU_RING_TYPE_VCN_DEC ;
 scalar_t__ AMDGPU_RING_TYPE_VCN_ENC ;
 scalar_t__ AMDGPU_RING_TYPE_VCN_JPEG ;
 int DRM_DEV_DEBUG (int ,char*,int ) ;
 int DRM_DEV_ERROR (int ,char*,int ,int) ;
 int amdgpu_ring_test_ib (struct amdgpu_ring*,long) ;
 scalar_t__ amdgpu_sriov_runtime (struct amdgpu_device*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;

int amdgpu_ib_ring_tests(struct amdgpu_device *adev)
{
 unsigned i;
 int r, ret = 0;
 long tmo_gfx, tmo_mm;

 tmo_mm = tmo_gfx = AMDGPU_IB_TEST_TIMEOUT;
 if (amdgpu_sriov_vf(adev)) {






  tmo_mm = 8 * AMDGPU_IB_TEST_TIMEOUT;
 }

 if (amdgpu_sriov_runtime(adev)) {




  tmo_gfx = 8 * AMDGPU_IB_TEST_TIMEOUT;
 } else if (adev->gmc.xgmi.hive_id) {
  tmo_gfx = AMDGPU_IB_TEST_GFX_XGMI_TIMEOUT;
 }

 for (i = 0; i < adev->num_rings; ++i) {
  struct amdgpu_ring *ring = adev->rings[i];
  long tmo;




  if (!ring->sched.ready || !ring->funcs->test_ib)
   continue;


  if (ring->funcs->type == AMDGPU_RING_TYPE_UVD ||
   ring->funcs->type == AMDGPU_RING_TYPE_VCE ||
   ring->funcs->type == AMDGPU_RING_TYPE_UVD_ENC ||
   ring->funcs->type == AMDGPU_RING_TYPE_VCN_DEC ||
   ring->funcs->type == AMDGPU_RING_TYPE_VCN_ENC ||
   ring->funcs->type == AMDGPU_RING_TYPE_VCN_JPEG)
   tmo = tmo_mm;
  else
   tmo = tmo_gfx;

  r = amdgpu_ring_test_ib(ring, tmo);
  if (!r) {
   DRM_DEV_DEBUG(adev->dev, "ib test on %s succeeded\n",
          ring->name);
   continue;
  }

  ring->sched.ready = 0;
  DRM_DEV_ERROR(adev->dev, "IB test failed on %s (%d).\n",
     ring->name, r);

  if (ring == &adev->gfx.gfx_ring[0]) {

   adev->accel_working = 0;
   return r;

  } else {
   ret = r;
  }
 }
 return ret;
}
