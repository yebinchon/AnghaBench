
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_power_state {int dummy; } ;
struct pp_hwmgr {int dummy; } ;



__attribute__((used)) static int smu8_get_power_state_size(struct pp_hwmgr *hwmgr)
{
 return sizeof(struct smu8_power_state);
}
