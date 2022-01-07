
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int not_vf; } ;


 int AVFS_EN_LSB ;
 int AVFS_EN_MSB ;
 int atomctrl_read_efuse (struct pp_hwmgr*,int,int,int,int*) ;

__attribute__((used)) static bool fiji_is_hw_avfs_present(struct pp_hwmgr *hwmgr)
{

 uint32_t efuse = 0;
 uint32_t mask = (1 << ((AVFS_EN_MSB - AVFS_EN_LSB) + 1)) - 1;

 if (!hwmgr->not_vf)
  return 0;

 if (!atomctrl_read_efuse(hwmgr, AVFS_EN_LSB, AVFS_EN_MSB,
   mask, &efuse)) {
  if (efuse)
   return 1;
 }
 return 0;
}
