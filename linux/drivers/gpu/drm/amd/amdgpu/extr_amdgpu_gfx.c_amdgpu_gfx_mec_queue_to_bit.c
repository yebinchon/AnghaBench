
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_pipe_per_mec; int num_queue_per_pipe; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;



int amdgpu_gfx_mec_queue_to_bit(struct amdgpu_device *adev, int mec,
    int pipe, int queue)
{
 int bit = 0;

 bit += mec * adev->gfx.mec.num_pipe_per_mec
  * adev->gfx.mec.num_queue_per_pipe;
 bit += pipe * adev->gfx.mec.num_queue_per_pipe;
 bit += queue;

 return bit;
}
