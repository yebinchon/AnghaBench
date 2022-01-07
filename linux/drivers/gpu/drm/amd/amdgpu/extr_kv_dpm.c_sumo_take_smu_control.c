
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int mmDOUT_SCRATCH3 ;

__attribute__((used)) static void sumo_take_smu_control(struct amdgpu_device *adev, bool enable)
{
}
