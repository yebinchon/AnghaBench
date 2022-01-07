
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {unsigned long core_clk_rate; } ;



__attribute__((used)) static unsigned long dispc_core_clk_rate(struct dispc_device *dispc)
{
 return dispc->core_clk_rate;
}
