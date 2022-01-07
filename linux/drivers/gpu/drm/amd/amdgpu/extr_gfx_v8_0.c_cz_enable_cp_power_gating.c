
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int CP_PG_DISABLE ;
 int RLC_PG_CNTL ;
 int WREG32_FIELD (int ,int ,int) ;

__attribute__((used)) static void cz_enable_cp_power_gating(struct amdgpu_device *adev, bool enable)
{
 WREG32_FIELD(RLC_PG_CNTL, CP_PG_DISABLE, enable ? 0 : 1);
}
