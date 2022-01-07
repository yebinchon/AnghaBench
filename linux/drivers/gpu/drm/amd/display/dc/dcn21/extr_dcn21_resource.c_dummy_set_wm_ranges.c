
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_smu_wm_range_sets {int dummy; } ;
struct pp_smu {int dummy; } ;
typedef enum pp_smu_status { ____Placeholder_pp_smu_status } pp_smu_status ;


 int PP_SMU_RESULT_OK ;

enum pp_smu_status dummy_set_wm_ranges(struct pp_smu *pp,
  struct pp_smu_wm_range_sets *ranges)
{
 return PP_SMU_RESULT_OK;
}
