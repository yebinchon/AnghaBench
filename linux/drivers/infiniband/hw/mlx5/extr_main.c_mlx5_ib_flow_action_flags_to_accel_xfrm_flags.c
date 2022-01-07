
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA ;
 int MLX5_IB_UAPI_FLOW_ACTION_FLAGS_REQUIRE_METADATA ;

__attribute__((used)) static u32 mlx5_ib_flow_action_flags_to_accel_xfrm_flags(u32 mlx5_flags)
{
 u32 flags = 0;

 if (mlx5_flags & MLX5_IB_UAPI_FLOW_ACTION_FLAGS_REQUIRE_METADATA)
  flags |= MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA;

 return flags;
}
