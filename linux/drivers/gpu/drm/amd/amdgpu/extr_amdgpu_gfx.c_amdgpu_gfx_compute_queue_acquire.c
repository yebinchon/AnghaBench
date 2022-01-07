
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_queue_per_pipe; int num_pipe_per_mec; int num_mec; int queue_bitmap; } ;
struct TYPE_4__ {scalar_t__ num_compute_rings; TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int AMDGPU_MAX_COMPUTE_QUEUES ;
 scalar_t__ AMDGPU_MAX_COMPUTE_RINGS ;
 scalar_t__ WARN_ON (int) ;
 int amdgpu_gfx_is_multipipe_capable (struct amdgpu_device*) ;
 scalar_t__ bitmap_weight (int ,int) ;
 int set_bit (int,int ) ;

void amdgpu_gfx_compute_queue_acquire(struct amdgpu_device *adev)
{
 int i, queue, pipe, mec;
 bool multipipe_policy = amdgpu_gfx_is_multipipe_capable(adev);


 for (i = 0; i < AMDGPU_MAX_COMPUTE_QUEUES; ++i) {
  queue = i % adev->gfx.mec.num_queue_per_pipe;
  pipe = (i / adev->gfx.mec.num_queue_per_pipe)
   % adev->gfx.mec.num_pipe_per_mec;
  mec = (i / adev->gfx.mec.num_queue_per_pipe)
   / adev->gfx.mec.num_pipe_per_mec;


  if (mec >= adev->gfx.mec.num_mec)
   break;

  if (multipipe_policy) {

   if (mec == 0 && queue < 2)
    set_bit(i, adev->gfx.mec.queue_bitmap);
  } else {

   if (mec == 0 && pipe == 0)
    set_bit(i, adev->gfx.mec.queue_bitmap);
  }
 }


 adev->gfx.num_compute_rings =
  bitmap_weight(adev->gfx.mec.queue_bitmap, AMDGPU_MAX_COMPUTE_QUEUES);



 if (WARN_ON(adev->gfx.num_compute_rings > AMDGPU_MAX_COMPUTE_RINGS))
  adev->gfx.num_compute_rings = AMDGPU_MAX_COMPUTE_RINGS;
}
