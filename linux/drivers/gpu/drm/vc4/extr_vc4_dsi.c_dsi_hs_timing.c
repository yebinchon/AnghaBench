
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ DIV_ROUND_UP (scalar_t__,scalar_t__) ;
 scalar_t__ roundup (scalar_t__,int) ;

__attribute__((used)) static u32
dsi_hs_timing(u32 ui_ns, u32 ns, u32 ui)
{



 return roundup(ui + DIV_ROUND_UP(ns, ui_ns), 8);
}
