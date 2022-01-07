
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ti_sci_handle {int dummy; } ;


 int EINVAL ;
 scalar_t__ MSG_DEVICE_HW_STATE_OFF ;
 scalar_t__ MSG_DEVICE_SW_STATE_AUTO_OFF ;
 int ti_sci_get_device_state (struct ti_sci_handle const*,int ,int *,int *,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int ti_sci_cmd_dev_is_stop(const struct ti_sci_handle *handle, u32 id,
      bool *r_state, bool *curr_state)
{
 int ret;
 u8 p_state, c_state;

 if (!r_state && !curr_state)
  return -EINVAL;

 ret =
     ti_sci_get_device_state(handle, id, ((void*)0), ((void*)0), &p_state, &c_state);
 if (ret)
  return ret;

 if (r_state)
  *r_state = (p_state == MSG_DEVICE_SW_STATE_AUTO_OFF);
 if (curr_state)
  *curr_state = (c_state == MSG_DEVICE_HW_STATE_OFF);

 return 0;
}
