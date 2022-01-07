
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_display_topology {int num_intf; } ;



__attribute__((used)) static bool _dpu_rm_needs_split_display(const struct msm_display_topology *top)
{
 return top->num_intf > 1;
}
