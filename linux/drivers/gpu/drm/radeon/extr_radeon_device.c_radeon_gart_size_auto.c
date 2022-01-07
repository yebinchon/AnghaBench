
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum radeon_family { ____Placeholder_radeon_family } radeon_family ;


 int CHIP_RV770 ;
 int CHIP_TAHITI ;

__attribute__((used)) static int radeon_gart_size_auto(enum radeon_family family)
{

 if (family >= CHIP_TAHITI)
  return 2048;
 else if (family >= CHIP_RV770)
  return 1024;
 else
  return 512;
}
