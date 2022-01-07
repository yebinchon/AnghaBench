
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_AT_0 ;
 int CG_AT_1 ;
 int CG_AT_2 ;
 int CG_AT_3 ;
 int CG_AT_4 ;
 int CG_AT_5 ;
 int CG_AT_6 ;
 int CG_AT_7 ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void sumo_write_at(struct radeon_device *rdev,
     u32 index, u32 value)
{
 if (index == 0)
  WREG32(CG_AT_0, value);
 else if (index == 1)
  WREG32(CG_AT_1, value);
 else if (index == 2)
  WREG32(CG_AT_2, value);
 else if (index == 3)
  WREG32(CG_AT_3, value);
 else if (index == 4)
  WREG32(CG_AT_4, value);
 else if (index == 5)
  WREG32(CG_AT_5, value);
 else if (index == 6)
  WREG32(CG_AT_6, value);
 else if (index == 7)
  WREG32(CG_AT_7, value);
}
