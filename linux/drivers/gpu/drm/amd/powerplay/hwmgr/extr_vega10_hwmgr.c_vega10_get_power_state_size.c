
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega10_power_state {int dummy; } ;
struct pp_hwmgr {int dummy; } ;



__attribute__((used)) static int vega10_get_power_state_size(struct pp_hwmgr *hwmgr)
{
 return sizeof(struct vega10_power_state);
}
