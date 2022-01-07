
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega10_dpm_state {int soft_min_level; int soft_max_level; int hard_min_level; int hard_max_level; } ;



__attribute__((used)) static void vega10_init_dpm_state(struct vega10_dpm_state *dpm_state)
{
 dpm_state->soft_min_level = 0xff;
 dpm_state->soft_max_level = 0xff;
 dpm_state->hard_min_level = 0xff;
 dpm_state->hard_max_level = 0xff;
}
