
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 scalar_t__ caam32_to_cpu (int ) ;
 scalar_t__ caam_little_end ;
 int cpu_to_caam32 (scalar_t__) ;
 int * desc_end (int * const) ;
 scalar_t__ lower_32_bits (int ) ;
 scalar_t__ upper_32_bits (int ) ;

__attribute__((used)) static inline void append_u64(u32 * const desc, u64 data)
{
 u32 *offset = desc_end(desc);


 if (caam_little_end) {
  *offset = cpu_to_caam32(lower_32_bits(data));
  *(++offset) = cpu_to_caam32(upper_32_bits(data));
 } else {
  *offset = cpu_to_caam32(upper_32_bits(data));
  *(++offset) = cpu_to_caam32(lower_32_bits(data));
 }

 (*desc) = cpu_to_caam32(caam32_to_cpu(*desc) + 2);
}
