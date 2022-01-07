
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_queue_per_pipe; int num_pipe_per_me; int num_me; int queue_bitmap; } ;
struct TYPE_4__ {TYPE_1__ me; int num_gfx_rings; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int AMDGPU_MAX_GFX_QUEUES ;
 int bitmap_weight (int ,int) ;
 int set_bit (int,int ) ;

void amdgpu_gfx_graphics_queue_acquire(struct amdgpu_device *adev)
{
 int i, queue, pipe, me;

 for (i = 0; i < AMDGPU_MAX_GFX_QUEUES; ++i) {
  queue = i % adev->gfx.me.num_queue_per_pipe;
  pipe = (i / adev->gfx.me.num_queue_per_pipe)
   % adev->gfx.me.num_pipe_per_me;
  me = (i / adev->gfx.me.num_queue_per_pipe)
        / adev->gfx.me.num_pipe_per_me;

  if (me >= adev->gfx.me.num_me)
   break;


  if (me == 0 && queue < 1)
   set_bit(i, adev->gfx.me.queue_bitmap);
 }


 adev->gfx.num_gfx_rings =
  bitmap_weight(adev->gfx.me.queue_bitmap, AMDGPU_MAX_GFX_QUEUES);
}
