
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int div_u64 (int,int) ;

__attribute__((used)) static u32 ns_to_clk(u64 ns, u32 clk_mhz)
{
 return div_u64(ns * clk_mhz, 1000);
}
