
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int* kzalloc (int,int ) ;
 int le32_to_cpu (int const) ;

int phm_copy_clock_limits_array(
 struct pp_hwmgr *hwmgr,
 uint32_t **pptable_info_array,
 const uint32_t *pptable_array,
 uint32_t power_saving_clock_count)
{
 uint32_t array_size, i;
 uint32_t *table;

 array_size = sizeof(uint32_t) * power_saving_clock_count;
 table = kzalloc(array_size, GFP_KERNEL);
 if (((void*)0) == table)
  return -ENOMEM;

 for (i = 0; i < power_saving_clock_count; i++)
  table[i] = le32_to_cpu(pptable_array[i]);

 *pptable_info_array = table;

 return 0;
}
