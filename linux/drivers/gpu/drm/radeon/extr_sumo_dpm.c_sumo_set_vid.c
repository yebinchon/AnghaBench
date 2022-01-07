
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_DPM_VOLTAGE_CNTL ;
 int DPM_STATE0_LEVEL_MASK ;
 int DPM_STATE0_LEVEL_SHIFT ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void sumo_set_vid(struct radeon_device *rdev, u32 index, u32 vid)
{
 u32 voltage_cntl = RREG32(CG_DPM_VOLTAGE_CNTL);

 voltage_cntl &= ~(DPM_STATE0_LEVEL_MASK << (index * 2));
 voltage_cntl |= (vid << (DPM_STATE0_LEVEL_SHIFT + index * 2));
 WREG32(CG_DPM_VOLTAGE_CNTL, voltage_cntl);
}
