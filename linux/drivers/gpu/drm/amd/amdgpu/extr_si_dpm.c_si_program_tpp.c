
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int CG_TPC ;
 int R600_TPC_DFLT ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void si_program_tpp(struct amdgpu_device *adev)
{
 WREG32(CG_TPC, R600_TPC_DFLT);
}
