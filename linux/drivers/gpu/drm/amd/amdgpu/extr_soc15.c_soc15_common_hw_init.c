
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_device {TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {int (* remap_hdp_registers ) (struct amdgpu_device*) ;int (* init_registers ) (struct amdgpu_device*) ;} ;


 int soc15_doorbell_range_init (struct amdgpu_device*) ;
 int soc15_enable_doorbell_aperture (struct amdgpu_device*,int) ;
 int soc15_pcie_gen3_enable (struct amdgpu_device*) ;
 int soc15_program_aspm (struct amdgpu_device*) ;
 int stub1 (struct amdgpu_device*) ;
 int stub2 (struct amdgpu_device*) ;

__attribute__((used)) static int soc15_common_hw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 soc15_pcie_gen3_enable(adev);

 soc15_program_aspm(adev);

 adev->nbio_funcs->init_registers(adev);




 if (adev->nbio_funcs->remap_hdp_registers)
  adev->nbio_funcs->remap_hdp_registers(adev);


 soc15_enable_doorbell_aperture(adev, 1);





 soc15_doorbell_range_init(adev);

 return 0;
}
