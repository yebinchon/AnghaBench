
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __be64 ;


 int MLX5_MKEY_MASK_A ;
 int MLX5_MKEY_MASK_LR ;
 int MLX5_MKEY_MASK_LW ;
 int MLX5_MKEY_MASK_RR ;
 int MLX5_MKEY_MASK_RW ;
 int cpu_to_be64 (int) ;

__attribute__((used)) static __be64 get_umr_update_access_mask(int atomic)
{
 u64 result;

 result = MLX5_MKEY_MASK_LR |
   MLX5_MKEY_MASK_LW |
   MLX5_MKEY_MASK_RR |
   MLX5_MKEY_MASK_RW;

 if (atomic)
  result |= MLX5_MKEY_MASK_A;

 return cpu_to_be64(result);
}
