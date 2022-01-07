
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_handle {struct clock_info* clk_priv; } ;
struct clock_info {int num_clocks; } ;



__attribute__((used)) static int scmi_clock_count_get(const struct scmi_handle *handle)
{
 struct clock_info *ci = handle->clk_priv;

 return ci->num_clocks;
}
