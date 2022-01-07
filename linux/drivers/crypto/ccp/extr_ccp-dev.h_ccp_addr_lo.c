
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccp_dma_info {scalar_t__ offset; scalar_t__ address; } ;


 int lower_32_bits (scalar_t__) ;

__attribute__((used)) static inline u32 ccp_addr_lo(struct ccp_dma_info *info)
{
 return lower_32_bits(info->address + info->offset);
}
