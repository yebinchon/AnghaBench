
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int dma_addr_t ;


 int DESC_ENC (int ,unsigned int,int ,int ) ;
 int DESC_TYPE_MASK ;
 int DESC_TYPE_SHIFT ;
 int MDST_ADDR_MASK ;
 int MDST_ADDR_SHIFT ;
 int MDST_LENGTH_MASK ;
 int MDST_LENGTH_SHIFT ;
 unsigned int MDST_TYPE ;

__attribute__((used)) static u64 flexrm_mdst_desc(dma_addr_t addr, unsigned int length_div_16)
{
 u64 desc = 0;

 DESC_ENC(desc, MDST_TYPE, DESC_TYPE_SHIFT, DESC_TYPE_MASK);
 DESC_ENC(desc, length_div_16, MDST_LENGTH_SHIFT, MDST_LENGTH_MASK);
 DESC_ENC(desc, addr, MDST_ADDR_SHIFT, MDST_ADDR_MASK);

 return desc;
}
