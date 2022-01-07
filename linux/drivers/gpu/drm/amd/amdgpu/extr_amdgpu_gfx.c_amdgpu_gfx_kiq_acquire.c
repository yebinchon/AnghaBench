
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {int me; int pipe; int queue; } ;
struct TYPE_3__ {int num_mec; int num_pipe_per_mec; int num_queue_per_pipe; int queue_bitmap; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {int dev; TYPE_2__ gfx; } ;


 int EINVAL ;
 int amdgpu_gfx_bit_to_mec_queue (struct amdgpu_device*,int,int*,int*,int*) ;
 int dev_err (int ,char*) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int amdgpu_gfx_kiq_acquire(struct amdgpu_device *adev,
      struct amdgpu_ring *ring)
{
 int queue_bit;
 int mec, pipe, queue;

 queue_bit = adev->gfx.mec.num_mec
      * adev->gfx.mec.num_pipe_per_mec
      * adev->gfx.mec.num_queue_per_pipe;

 while (queue_bit-- >= 0) {
  if (test_bit(queue_bit, adev->gfx.mec.queue_bitmap))
   continue;

  amdgpu_gfx_bit_to_mec_queue(adev, queue_bit, &mec, &pipe, &queue);






  if ((mec == 1 && pipe > 1) || queue != 0)
   continue;

  ring->me = mec + 1;
  ring->pipe = pipe;
  ring->queue = queue;

  return 0;
 }

 dev_err(adev->dev, "Failed to find a queue for KIQ\n");
 return -EINVAL;
}
