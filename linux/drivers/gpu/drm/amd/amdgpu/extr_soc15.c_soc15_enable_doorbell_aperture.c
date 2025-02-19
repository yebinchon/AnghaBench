
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_device {TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {int (* enable_doorbell_selfring_aperture ) (struct amdgpu_device*,int) ;int (* enable_doorbell_aperture ) (struct amdgpu_device*,int) ;} ;


 int stub1 (struct amdgpu_device*,int) ;
 int stub2 (struct amdgpu_device*,int) ;

__attribute__((used)) static void soc15_enable_doorbell_aperture(struct amdgpu_device *adev,
        bool enable)
{
 adev->nbio_funcs->enable_doorbell_aperture(adev, enable);
 adev->nbio_funcs->enable_doorbell_selfring_aperture(adev, enable);
}
