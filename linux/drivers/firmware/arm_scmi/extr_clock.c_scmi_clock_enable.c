
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scmi_handle {int dummy; } ;


 int CLOCK_ENABLE ;
 int scmi_clock_config_set (struct scmi_handle const*,int ,int ) ;

__attribute__((used)) static int scmi_clock_enable(const struct scmi_handle *handle, u32 clk_id)
{
 return scmi_clock_config_set(handle, clk_id, CLOCK_ENABLE);
}
