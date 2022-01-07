
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_sci_handle {int dummy; } ;


 int MSG_CLOCK_SW_STATE_AUTO ;
 int ti_sci_set_clock_state (struct ti_sci_handle const*,int ,int ,int ,int ) ;

__attribute__((used)) static int ti_sci_cmd_put_clock(const struct ti_sci_handle *handle,
    u32 dev_id, u32 clk_id)
{
 return ti_sci_set_clock_state(handle, dev_id, clk_id, 0,
          MSG_CLOCK_SW_STATE_AUTO);
}
