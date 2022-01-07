
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue_bitmap; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int amdgpu_gfx_mec_queue_to_bit (struct amdgpu_device*,int,int,int) ;
 int test_bit (int ,int ) ;

bool amdgpu_gfx_is_mec_queue_enabled(struct amdgpu_device *adev,
         int mec, int pipe, int queue)
{
 return test_bit(amdgpu_gfx_mec_queue_to_bit(adev, mec, pipe, queue),
   adev->gfx.mec.queue_bitmap);
}
