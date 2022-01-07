
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;




 int MLX5_FENCE_MODE_INITIATOR_SMALL ;
 int MLX5_FENCE_MODE_NONE ;
 int MLX5_FENCE_MODE_STRONG_ORDERING ;

__attribute__((used)) static u8 mlx5_get_umr_fence(u8 umr_fence_cap)
{
 switch (umr_fence_cap) {
 case 129:
  return MLX5_FENCE_MODE_NONE;
 case 128:
  return MLX5_FENCE_MODE_INITIATOR_SMALL;
 default:
  return MLX5_FENCE_MODE_STRONG_ORDERING;
 }
}
