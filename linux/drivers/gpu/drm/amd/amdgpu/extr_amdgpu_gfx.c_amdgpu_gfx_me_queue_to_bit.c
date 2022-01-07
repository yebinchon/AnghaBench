
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_pipe_per_me; int num_queue_per_pipe; } ;
struct TYPE_4__ {TYPE_1__ me; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;



int amdgpu_gfx_me_queue_to_bit(struct amdgpu_device *adev,
          int me, int pipe, int queue)
{
 int bit = 0;

 bit += me * adev->gfx.me.num_pipe_per_me
  * adev->gfx.me.num_queue_per_pipe;
 bit += pipe * adev->gfx.me.num_queue_per_pipe;
 bit += queue;

 return bit;
}
