
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int pipe; int me; } ;
struct TYPE_2__ {int num_gfx_rings; int num_compute_rings; int pipe_reserve_mutex; int pipe_reserve_bitmap; struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int AMDGPU_MAX_COMPUTE_QUEUES ;
 int amdgpu_gfx_mec_queue_to_bit (struct amdgpu_device*,int ,int ,int ) ;
 int bitmap_weight (int ,int ) ;
 int clear_bit (int,int ) ;
 int gfx_v8_0_ring_set_pipe_percent (struct amdgpu_ring*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int,int ) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void gfx_v8_0_pipe_reserve_resources(struct amdgpu_device *adev,
         struct amdgpu_ring *ring,
         bool acquire)
{
 int i, pipe;
 bool reserve;
 struct amdgpu_ring *iring;

 mutex_lock(&adev->gfx.pipe_reserve_mutex);
 pipe = amdgpu_gfx_mec_queue_to_bit(adev, ring->me, ring->pipe, 0);
 if (acquire)
  set_bit(pipe, adev->gfx.pipe_reserve_bitmap);
 else
  clear_bit(pipe, adev->gfx.pipe_reserve_bitmap);

 if (!bitmap_weight(adev->gfx.pipe_reserve_bitmap, AMDGPU_MAX_COMPUTE_QUEUES)) {

  for (i = 0; i < adev->gfx.num_gfx_rings; ++i)
   gfx_v8_0_ring_set_pipe_percent(&adev->gfx.gfx_ring[i],
             1);

  for (i = 0; i < adev->gfx.num_compute_rings; ++i)
   gfx_v8_0_ring_set_pipe_percent(&adev->gfx.compute_ring[i],
             1);
 } else {

  for (i = 0; i < adev->gfx.num_gfx_rings; ++i) {
   iring = &adev->gfx.gfx_ring[i];
   pipe = amdgpu_gfx_mec_queue_to_bit(adev,
          iring->me,
          iring->pipe,
          0);
   reserve = test_bit(pipe, adev->gfx.pipe_reserve_bitmap);
   gfx_v8_0_ring_set_pipe_percent(iring, reserve);
  }

  for (i = 0; i < adev->gfx.num_compute_rings; ++i) {
   iring = &adev->gfx.compute_ring[i];
   pipe = amdgpu_gfx_mec_queue_to_bit(adev,
          iring->me,
          iring->pipe,
          0);
   reserve = test_bit(pipe, adev->gfx.pipe_reserve_bitmap);
   gfx_v8_0_ring_set_pipe_percent(iring, reserve);
  }
 }

 mutex_unlock(&adev->gfx.pipe_reserve_mutex);
}
