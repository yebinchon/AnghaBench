
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct radeon_device {scalar_t__ family; struct drm_device* ddev; } ;
struct drm_device {int dummy; } ;


 scalar_t__ CHIP_RS400 ;
 int COMBIOS_INTEGRATED_SYSTEM_INFO_TABLE ;
 scalar_t__ RBIOS16 (scalar_t__) ;
 scalar_t__ combios_get_table_offset (struct drm_device*,int ) ;

bool radeon_combios_sideport_present(struct radeon_device *rdev)
{
 struct drm_device *dev = rdev->ddev;
 u16 igp_info;


 if (rdev->family == CHIP_RS400)
  return 0;

 igp_info = combios_get_table_offset(dev, COMBIOS_INTEGRATED_SYSTEM_INFO_TABLE);

 if (igp_info) {
  if (RBIOS16(igp_info + 0x4))
   return 1;
 }
 return 0;
}
