
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_queue_per_pipe; int num_pipe_per_mec; } ;
struct TYPE_3__ {TYPE_2__ mec; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;



void amdgpu_gfx_bit_to_mec_queue(struct amdgpu_device *adev, int bit,
     int *mec, int *pipe, int *queue)
{
 *queue = bit % adev->gfx.mec.num_queue_per_pipe;
 *pipe = (bit / adev->gfx.mec.num_queue_per_pipe)
  % adev->gfx.mec.num_pipe_per_mec;
 *mec = (bit / adev->gfx.mec.num_queue_per_pipe)
        / adev->gfx.mec.num_pipe_per_mec;

}
