
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_power_info {int vrc; } ;
struct amdgpu_device {int dummy; } ;


 int CG_FTV ;
 int WREG32 (int ,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void si_program_vc(struct amdgpu_device *adev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(adev);

 WREG32(CG_FTV, pi->vrc);
}
