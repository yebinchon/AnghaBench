
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int MP1 ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmMP1_SMN_C2PMSG_82 ;

__attribute__((used)) static int smu_v12_0_read_arg(struct smu_context *smu, uint32_t *arg)
{
 struct amdgpu_device *adev = smu->adev;

 *arg = RREG32_SOC15(MP1, 0, mmMP1_SMN_C2PMSG_82);
 return 0;
}
