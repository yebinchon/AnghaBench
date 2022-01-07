
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ti_sci_handle {int dummy; } ;


 int ti_sci_get_resource_range (struct ti_sci_handle const*,int ,int ,int ,int *,int *) ;

__attribute__((used)) static
int ti_sci_cmd_get_resource_range_from_shost(const struct ti_sci_handle *handle,
          u32 dev_id, u8 subtype, u8 s_host,
          u16 *range_start, u16 *range_num)
{
 return ti_sci_get_resource_range(handle, dev_id, subtype, s_host,
      range_start, range_num);
}
