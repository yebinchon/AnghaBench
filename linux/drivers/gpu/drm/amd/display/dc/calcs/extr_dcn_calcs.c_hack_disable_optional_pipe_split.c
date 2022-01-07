
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn_bw_internal_vars {int max_dppclk_vmin0p65; int * max_dispclk; } ;



__attribute__((used)) static void hack_disable_optional_pipe_split(struct dcn_bw_internal_vars *v)
{




 v->max_dispclk[0] = v->max_dppclk_vmin0p65;
}
