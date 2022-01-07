
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __be64 ;


 int MLX5_MKEY_MASK_FREE ;
 int MLX5_MKEY_MASK_KEY ;
 int cpu_to_be64 (int) ;

__attribute__((used)) static __be64 get_umr_enable_mr_mask(void)
{
 u64 result;

 result = MLX5_MKEY_MASK_KEY |
   MLX5_MKEY_MASK_FREE;

 return cpu_to_be64(result);
}
