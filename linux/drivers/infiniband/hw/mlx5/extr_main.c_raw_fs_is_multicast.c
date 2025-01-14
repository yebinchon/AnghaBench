
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* match_params; } ;
struct mlx5_ib_flow_matcher {int match_criteria_enable; TYPE_1__ matcher_mask; } ;
typedef int __be32 ;
struct TYPE_5__ {int ipv4; } ;
struct TYPE_6__ {TYPE_2__ ipv4_layout; } ;


 int MATCH_CRITERIA_ENABLE_OUTER_BIT ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int dmac_47_16 ;
 TYPE_3__ dst_ipv4_dst_ipv6 ;
 int fte_match_param ;
 int fte_match_set_lyr_2_4 ;
 scalar_t__ ipv4_is_multicast (int ) ;
 scalar_t__ is_multicast_ether_addr (void*) ;
 int outer_headers ;

__attribute__((used)) static bool raw_fs_is_multicast(struct mlx5_ib_flow_matcher *fs_matcher,
    void *match_v)
{
 void *match_c;
 void *match_v_set_lyr_2_4, *match_c_set_lyr_2_4;
 void *dmac, *dmac_mask;
 void *ipv4, *ipv4_mask;

 if (!(fs_matcher->match_criteria_enable &
       (1 << MATCH_CRITERIA_ENABLE_OUTER_BIT)))
  return 0;

 match_c = fs_matcher->matcher_mask.match_params;
 match_v_set_lyr_2_4 = MLX5_ADDR_OF(fte_match_param, match_v,
        outer_headers);
 match_c_set_lyr_2_4 = MLX5_ADDR_OF(fte_match_param, match_c,
        outer_headers);

 dmac = MLX5_ADDR_OF(fte_match_set_lyr_2_4, match_v_set_lyr_2_4,
       dmac_47_16);
 dmac_mask = MLX5_ADDR_OF(fte_match_set_lyr_2_4, match_c_set_lyr_2_4,
     dmac_47_16);

 if (is_multicast_ether_addr(dmac) &&
     is_multicast_ether_addr(dmac_mask))
  return 1;

 ipv4 = MLX5_ADDR_OF(fte_match_set_lyr_2_4, match_v_set_lyr_2_4,
       dst_ipv4_dst_ipv6.ipv4_layout.ipv4);

 ipv4_mask = MLX5_ADDR_OF(fte_match_set_lyr_2_4, match_c_set_lyr_2_4,
     dst_ipv4_dst_ipv6.ipv4_layout.ipv4);

 if (ipv4_is_multicast(*(__be32 *)(ipv4)) &&
     ipv4_is_multicast(*(__be32 *)(ipv4_mask)))
  return 1;

 return 0;
}
