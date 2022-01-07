
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CONFIG_ARCH_DMA_ADDR_T_64BIT ;
 scalar_t__ IS_ENABLED (int ) ;
 int caam32_to_cpu (int ) ;
 int caam_dma64_to_cpu (int ) ;
 int caam_ptr_sz ;

__attribute__((used)) static inline u64 caam_dma_to_cpu(u64 value)
{
 if (IS_ENABLED(CONFIG_ARCH_DMA_ADDR_T_64BIT) &&
     caam_ptr_sz == sizeof(u64))
  return caam_dma64_to_cpu(value);
 else
  return caam32_to_cpu(value);
}
