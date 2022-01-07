
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_smu {int dummy; } ;
struct dpm_clocks {int dummy; } ;
typedef enum pp_smu_status { ____Placeholder_pp_smu_status } pp_smu_status ;


 int PP_SMU_RESULT_OK ;
 struct dpm_clocks dummy_clocks ;

enum pp_smu_status dummy_get_dpm_clock_table(struct pp_smu *pp,
  struct dpm_clocks *clock_table)
{
 *clock_table = dummy_clocks;
 return PP_SMU_RESULT_OK;
}
