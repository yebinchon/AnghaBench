
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CONFIG_ARCH_DMA_ADDR_T_64BIT ;
 scalar_t__ IS_ENABLED (int ) ;
 int caam_ptr_sz ;
 int cpu_to_caam32 (int ) ;
 int cpu_to_caam_dma64 (int ) ;

__attribute__((used)) static inline u64 cpu_to_caam_dma(u64 value)
{
 if (IS_ENABLED(CONFIG_ARCH_DMA_ADDR_T_64BIT) &&
     caam_ptr_sz == sizeof(u64))
  return cpu_to_caam_dma64(value);
 else
  return cpu_to_caam32(value);
}
