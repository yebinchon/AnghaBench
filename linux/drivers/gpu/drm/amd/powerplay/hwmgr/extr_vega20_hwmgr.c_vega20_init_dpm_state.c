
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega20_dpm_state {int soft_min_level; int hard_min_level; void* hard_max_level; void* soft_max_level; } ;


 void* VG20_CLOCK_MAX_DEFAULT ;

__attribute__((used)) static void vega20_init_dpm_state(struct vega20_dpm_state *dpm_state)
{
 dpm_state->soft_min_level = 0x0;
 dpm_state->soft_max_level = VG20_CLOCK_MAX_DEFAULT;
 dpm_state->hard_min_level = 0x0;
 dpm_state->hard_max_level = VG20_CLOCK_MAX_DEFAULT;
}
