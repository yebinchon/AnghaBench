
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {unsigned long dss_clk_rate; } ;



unsigned long dss_get_dispc_clk_rate(struct dss_device *dss)
{
 return dss->dss_clk_rate;
}
