
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_FTV_0 ;
 int WREG32_SMC (int ,int) ;

__attribute__((used)) static void kv_program_vc(struct radeon_device *rdev)
{
 WREG32_SMC(CG_FTV_0, 0x3FFFC100);
}
