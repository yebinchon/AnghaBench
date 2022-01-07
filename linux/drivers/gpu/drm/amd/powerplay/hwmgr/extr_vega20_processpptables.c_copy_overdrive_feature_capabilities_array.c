
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PHM_PlatformCaps_ACOverdriveSupport ;
 int* kzalloc (int,int ) ;
 int le32_to_cpu (int const) ;
 int phm_cap_set (int ,int ) ;

__attribute__((used)) static int copy_overdrive_feature_capabilities_array(
  struct pp_hwmgr *hwmgr,
  uint8_t **pptable_info_array,
  const uint8_t *pptable_array,
  uint8_t od_feature_count)
{
 uint32_t array_size, i;
 uint8_t *table;
 bool od_supported = 0;

 array_size = sizeof(uint8_t) * od_feature_count;
 table = kzalloc(array_size, GFP_KERNEL);
 if (((void*)0) == table)
  return -ENOMEM;

 for (i = 0; i < od_feature_count; i++) {
  table[i] = le32_to_cpu(pptable_array[i]);
  if (table[i])
   od_supported = 1;
 }

 *pptable_info_array = table;

 if (od_supported)
  phm_cap_set(hwmgr->platform_descriptor.platformCaps,
    PHM_PlatformCaps_ACOverdriveSupport);

 return 0;
}
