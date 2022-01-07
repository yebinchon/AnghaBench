
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PM_CLOCK_ENABLE ;
 int zynqmp_pm_invoke_fn (int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int zynqmp_pm_clock_enable(u32 clock_id)
{
 return zynqmp_pm_invoke_fn(PM_CLOCK_ENABLE, clock_id, 0, 0, 0, ((void*)0));
}
