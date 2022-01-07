
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int PM_FPGA_LOAD ;
 int lower_32_bits (int const) ;
 int upper_32_bits (int const) ;
 int zynqmp_pm_invoke_fn (int ,int ,int ,int const,int const,int *) ;

__attribute__((used)) static int zynqmp_pm_fpga_load(const u64 address, const u32 size,
          const u32 flags)
{
 return zynqmp_pm_invoke_fn(PM_FPGA_LOAD, lower_32_bits(address),
       upper_32_bits(address), size, flags, ((void*)0));
}
