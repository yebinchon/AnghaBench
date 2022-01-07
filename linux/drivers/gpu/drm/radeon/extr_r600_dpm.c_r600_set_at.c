
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_LT ;
 int CG_RT ;
 int FHS (int ) ;
 int FLS (int ) ;
 int FMS (int ) ;
 int WREG32 (int ,int) ;

void r600_set_at(struct radeon_device *rdev,
   u32 l_to_m, u32 m_to_h,
   u32 h_to_m, u32 m_to_l)
{
 WREG32(CG_RT, FLS(l_to_m) | FMS(m_to_h));
 WREG32(CG_LT, FHS(h_to_m) | FMS(m_to_l));
}
