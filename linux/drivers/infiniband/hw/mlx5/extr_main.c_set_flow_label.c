
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLX5_SET (int ,void*,int ,int ) ;
 int fte_match_set_misc ;
 int inner_ipv6_flow_label ;
 int outer_ipv6_flow_label ;

__attribute__((used)) static void set_flow_label(void *misc_c, void *misc_v, u32 mask, u32 val,
      bool inner)
{
 if (inner) {
  MLX5_SET(fte_match_set_misc,
    misc_c, inner_ipv6_flow_label, mask);
  MLX5_SET(fte_match_set_misc,
    misc_v, inner_ipv6_flow_label, val);
 } else {
  MLX5_SET(fte_match_set_misc,
    misc_c, outer_ipv6_flow_label, mask);
  MLX5_SET(fte_match_set_misc,
    misc_v, outer_ipv6_flow_label, val);
 }
}
