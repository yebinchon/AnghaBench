
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_sci_handle {int dummy; } ;


 int ti_sci_get_device_state (struct ti_sci_handle const*,int ,int *,int *,int *,int *) ;

__attribute__((used)) static int ti_sci_cmd_dev_get_clcnt(const struct ti_sci_handle *handle, u32 id,
        u32 *count)
{
 return ti_sci_get_device_state(handle, id, count, ((void*)0), ((void*)0), ((void*)0));
}
