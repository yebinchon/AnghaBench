
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ti_sci_handle {int dummy; } ;


 int EINVAL ;
 scalar_t__ MSG_CLOCK_SW_STATE_AUTO ;
 int ti_sci_cmd_get_clock_state (struct ti_sci_handle const*,int ,int ,scalar_t__*,int *) ;

__attribute__((used)) static int ti_sci_cmd_clk_is_auto(const struct ti_sci_handle *handle,
      u32 dev_id, u32 clk_id, bool *req_state)
{
 u8 state = 0;
 int ret;

 if (!req_state)
  return -EINVAL;

 ret = ti_sci_cmd_get_clock_state(handle, dev_id, clk_id, &state, ((void*)0));
 if (ret)
  return ret;

 *req_state = (state == MSG_CLOCK_SW_STATE_AUTO);
 return 0;
}
