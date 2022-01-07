
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcturus_dpm_state {int soft_min_level; int soft_max_level; int hard_min_level; int hard_max_level; } ;



__attribute__((used)) static void arcturus_init_single_dpm_state(struct arcturus_dpm_state *dpm_state)
{
 dpm_state->soft_min_level = 0x0;
 dpm_state->soft_max_level = 0xffff;
        dpm_state->hard_min_level = 0x0;
        dpm_state->hard_max_level = 0xffff;
}
