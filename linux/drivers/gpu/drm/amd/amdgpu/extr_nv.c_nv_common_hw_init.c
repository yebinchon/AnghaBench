
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_device {TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {int (* init_registers ) (struct amdgpu_device*) ;} ;


 int nv_enable_doorbell_aperture (struct amdgpu_device*,int) ;
 int nv_pcie_gen3_enable (struct amdgpu_device*) ;
 int nv_program_aspm (struct amdgpu_device*) ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int nv_common_hw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 nv_pcie_gen3_enable(adev);

 nv_program_aspm(adev);

 adev->nbio_funcs->init_registers(adev);

 nv_enable_doorbell_aperture(adev, 1);

 return 0;
}
