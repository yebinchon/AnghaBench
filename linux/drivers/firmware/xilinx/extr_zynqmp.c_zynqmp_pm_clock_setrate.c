
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int PM_CLOCK_SETRATE ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int zynqmp_pm_invoke_fn (int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate)
{
 return zynqmp_pm_invoke_fn(PM_CLOCK_SETRATE, clock_id,
       lower_32_bits(rate),
       upper_32_bits(rate),
       0, ((void*)0));
}
