
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ti_sci_handle {int dummy; } ;


 int EINVAL ;
 scalar_t__ MSG_DEVICE_SW_STATE_RETENTION ;
 int ti_sci_get_device_state (struct ti_sci_handle const*,int ,int *,int *,scalar_t__*,int *) ;

__attribute__((used)) static int ti_sci_cmd_dev_is_idle(const struct ti_sci_handle *handle, u32 id,
      bool *r_state)
{
 int ret;
 u8 state;

 if (!r_state)
  return -EINVAL;

 ret = ti_sci_get_device_state(handle, id, ((void*)0), ((void*)0), &state, ((void*)0));
 if (ret)
  return ret;

 *r_state = (state == MSG_DEVICE_SW_STATE_RETENTION);

 return 0;
}
