
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_3__ {int num_pipe_per_mec; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int lock_srbm (struct kgd_dev*,int,int,int,int ) ;

__attribute__((used)) static void acquire_queue(struct kgd_dev *kgd, uint32_t pipe_id,
    uint32_t queue_id)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);

 uint32_t mec = (pipe_id / adev->gfx.mec.num_pipe_per_mec) + 1;
 uint32_t pipe = (pipe_id % adev->gfx.mec.num_pipe_per_mec);

 lock_srbm(kgd, mec, pipe, queue_id, 0);
}
