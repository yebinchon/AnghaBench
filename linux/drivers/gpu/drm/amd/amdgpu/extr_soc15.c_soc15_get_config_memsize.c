
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_device {TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {int (* get_memsize ) (struct amdgpu_device*) ;} ;


 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static u32 soc15_get_config_memsize(struct amdgpu_device *adev)
{
 return adev->nbio_funcs->get_memsize(adev);
}
