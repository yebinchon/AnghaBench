
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fsl_qdma_format {int addr_lo; int addr_hi; } ;


 int cpu_to_le32 (int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline void
qdma_desc_addr_set64(struct fsl_qdma_format *ccdf, u64 addr)
{
 ccdf->addr_hi = upper_32_bits(addr);
 ccdf->addr_lo = cpu_to_le32(lower_32_bits(addr));
}
