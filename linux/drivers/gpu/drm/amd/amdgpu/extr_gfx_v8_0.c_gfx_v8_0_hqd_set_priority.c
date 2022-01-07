
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int queue; int pipe; int me; } ;
struct amdgpu_device {int srbm_mutex; } ;


 int WREG32 (int ,int) ;
 int mmCP_HQD_PIPE_PRIORITY ;
 int mmCP_HQD_QUEUE_PRIORITY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vi_srbm_select (struct amdgpu_device*,int ,int ,int ,int ) ;

__attribute__((used)) static void gfx_v8_0_hqd_set_priority(struct amdgpu_device *adev,
          struct amdgpu_ring *ring,
          bool acquire)
{
 uint32_t pipe_priority = acquire ? 0x2 : 0x0;
 uint32_t queue_priority = acquire ? 0xf : 0x0;

 mutex_lock(&adev->srbm_mutex);
 vi_srbm_select(adev, ring->me, ring->pipe, ring->queue, 0);

 WREG32(mmCP_HQD_PIPE_PRIORITY, pipe_priority);
 WREG32(mmCP_HQD_QUEUE_PRIORITY, queue_priority);

 vi_srbm_select(adev, 0, 0, 0, 0);
 mutex_unlock(&adev->srbm_mutex);
}
