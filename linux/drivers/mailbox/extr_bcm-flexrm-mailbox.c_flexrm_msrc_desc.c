
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int dma_addr_t ;


 int DESC_ENC (int ,unsigned int,int ,int ) ;
 int DESC_TYPE_MASK ;
 int DESC_TYPE_SHIFT ;
 int MSRC_ADDR_MASK ;
 int MSRC_ADDR_SHIFT ;
 int MSRC_LENGTH_MASK ;
 int MSRC_LENGTH_SHIFT ;
 unsigned int MSRC_TYPE ;

__attribute__((used)) static u64 flexrm_msrc_desc(dma_addr_t addr, unsigned int length_div_16)
{
 u64 desc = 0;

 DESC_ENC(desc, MSRC_TYPE, DESC_TYPE_SHIFT, DESC_TYPE_MASK);
 DESC_ENC(desc, length_div_16, MSRC_LENGTH_SHIFT, MSRC_LENGTH_MASK);
 DESC_ENC(desc, addr, MSRC_ADDR_SHIFT, MSRC_ADDR_MASK);

 return desc;
}
