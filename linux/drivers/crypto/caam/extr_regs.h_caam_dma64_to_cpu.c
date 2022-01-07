
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ caam32_to_cpu (int ) ;
 int caam64_to_cpu (int) ;
 scalar_t__ caam_imx ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static inline u64 caam_dma64_to_cpu(u64 value)
{
 if (caam_imx)
  return (((u64)caam32_to_cpu(lower_32_bits(value)) << 32) |
    (u64)caam32_to_cpu(upper_32_bits(value)));

 return caam64_to_cpu(value);
}
