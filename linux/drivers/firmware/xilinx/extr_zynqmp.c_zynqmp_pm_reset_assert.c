
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum zynqmp_pm_reset_action { ____Placeholder_zynqmp_pm_reset_action } zynqmp_pm_reset_action ;
typedef enum zynqmp_pm_reset { ____Placeholder_zynqmp_pm_reset } zynqmp_pm_reset ;


 int PM_RESET_ASSERT ;
 int zynqmp_pm_invoke_fn (int ,int const,int const,int ,int ,int *) ;

__attribute__((used)) static int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
      const enum zynqmp_pm_reset_action assert_flag)
{
 return zynqmp_pm_invoke_fn(PM_RESET_ASSERT, reset, assert_flag,
       0, 0, ((void*)0));
}
