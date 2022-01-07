
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __be64 ;


 int MLX5_MKEY_MASK_LEN ;
 int MLX5_MKEY_MASK_PAGE_SIZE ;
 int MLX5_MKEY_MASK_START_ADDR ;
 int cpu_to_be64 (int) ;

__attribute__((used)) static __be64 get_umr_update_translation_mask(void)
{
 u64 result;

 result = MLX5_MKEY_MASK_LEN |
   MLX5_MKEY_MASK_PAGE_SIZE |
   MLX5_MKEY_MASK_START_ADDR;

 return cpu_to_be64(result);
}
