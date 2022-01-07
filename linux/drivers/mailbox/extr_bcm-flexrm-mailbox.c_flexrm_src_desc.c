
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int dma_addr_t ;


 int DESC_ENC (int ,unsigned int,int ,int ) ;
 int DESC_TYPE_MASK ;
 int DESC_TYPE_SHIFT ;
 int SRC_ADDR_MASK ;
 int SRC_ADDR_SHIFT ;
 int SRC_LENGTH_MASK ;
 int SRC_LENGTH_SHIFT ;
 unsigned int SRC_TYPE ;

__attribute__((used)) static u64 flexrm_src_desc(dma_addr_t addr, unsigned int length)
{
 u64 desc = 0;

 DESC_ENC(desc, SRC_TYPE, DESC_TYPE_SHIFT, DESC_TYPE_MASK);
 DESC_ENC(desc, length, SRC_LENGTH_SHIFT, SRC_LENGTH_MASK);
 DESC_ENC(desc, addr, SRC_ADDR_SHIFT, SRC_ADDR_MASK);

 return desc;
}
