
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int dma_addr_t ;


 int DESC_ENC (int ,unsigned int,int ,int ) ;
 int DESC_TYPE_MASK ;
 int DESC_TYPE_SHIFT ;
 int DSTT_ADDR_MASK ;
 int DSTT_ADDR_SHIFT ;
 int DSTT_LENGTH_MASK ;
 int DSTT_LENGTH_SHIFT ;
 unsigned int DSTT_TYPE ;

__attribute__((used)) static u64 flexrm_dstt_desc(dma_addr_t addr, unsigned int length)
{
 u64 desc = 0;

 DESC_ENC(desc, DSTT_TYPE, DESC_TYPE_SHIFT, DESC_TYPE_MASK);
 DESC_ENC(desc, length, DSTT_LENGTH_SHIFT, DSTT_LENGTH_MASK);
 DESC_ENC(desc, addr, DSTT_ADDR_SHIFT, DSTT_ADDR_MASK);

 return desc;
}
