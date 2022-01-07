
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int dma_addr_t ;


 scalar_t__ caam_imx ;
 scalar_t__ cpu_to_caam32 (int ) ;
 int cpu_to_caam64 (int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline u64 cpu_to_caam_dma64(dma_addr_t value)
{
 if (caam_imx)
  return (((u64)cpu_to_caam32(lower_32_bits(value)) << 32) |
    (u64)cpu_to_caam32(upper_32_bits(value)));

 return cpu_to_caam64(value);
}
