
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int dma_addr_t ;


 int DESC_ENC (int ,unsigned int,int ,int ) ;
 int DESC_TYPE_MASK ;
 int DESC_TYPE_SHIFT ;
 int SRCT_ADDR_MASK ;
 int SRCT_ADDR_SHIFT ;
 int SRCT_LENGTH_MASK ;
 int SRCT_LENGTH_SHIFT ;
 unsigned int SRCT_TYPE ;

__attribute__((used)) static u64 flexrm_srct_desc(dma_addr_t addr, unsigned int length)
{
 u64 desc = 0;

 DESC_ENC(desc, SRCT_TYPE, DESC_TYPE_SHIFT, DESC_TYPE_MASK);
 DESC_ENC(desc, length, SRCT_LENGTH_SHIFT, SRCT_LENGTH_MASK);
 DESC_ENC(desc, addr, SRCT_ADDR_SHIFT, SRCT_ADDR_MASK);

 return desc;
}
