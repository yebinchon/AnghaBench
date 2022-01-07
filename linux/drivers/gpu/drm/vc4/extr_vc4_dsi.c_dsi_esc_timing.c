
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIV_ROUND_UP (int ,int ) ;
 int ESC_TIME_NS ;

__attribute__((used)) static u32
dsi_esc_timing(u32 ns)
{
 return DIV_ROUND_UP(ns, ESC_TIME_NS);
}
