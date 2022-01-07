
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_queue_per_pipe; int num_pipe_per_me; } ;
struct TYPE_3__ {TYPE_2__ me; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;



void amdgpu_gfx_bit_to_me_queue(struct amdgpu_device *adev, int bit,
    int *me, int *pipe, int *queue)
{
 *queue = bit % adev->gfx.me.num_queue_per_pipe;
 *pipe = (bit / adev->gfx.me.num_queue_per_pipe)
  % adev->gfx.me.num_pipe_per_me;
 *me = (bit / adev->gfx.me.num_queue_per_pipe)
  / adev->gfx.me.num_pipe_per_me;
}
