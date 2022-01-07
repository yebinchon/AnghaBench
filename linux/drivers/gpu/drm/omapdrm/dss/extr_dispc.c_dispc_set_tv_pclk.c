
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {unsigned long tv_pclk_rate; } ;



void dispc_set_tv_pclk(struct dispc_device *dispc, unsigned long pclk)
{
 dispc->tv_pclk_rate = pclk;
}
