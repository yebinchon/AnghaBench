
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct radeon_device {int dummy; } ;



u16 r600_get_pcie_lane_support(struct radeon_device *rdev,
          u16 asic_lanes,
          u16 default_lanes)
{
 switch (asic_lanes) {
 case 0:
 default:
  return default_lanes;
 case 1:
  return 1;
 case 2:
  return 2;
 case 4:
  return 4;
 case 8:
  return 8;
 case 12:
  return 12;
 case 16:
  return 16;
 }
}
