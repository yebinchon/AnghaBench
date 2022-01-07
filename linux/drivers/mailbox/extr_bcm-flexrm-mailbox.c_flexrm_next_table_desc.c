
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int dma_addr_t ;


 int DESC_ENC (int ,int ,int ,int ) ;
 int DESC_TYPE_MASK ;
 int DESC_TYPE_SHIFT ;
 int NPTR_ADDR_MASK ;
 int NPTR_ADDR_SHIFT ;
 int NPTR_TOGGLE_MASK ;
 int NPTR_TOGGLE_SHIFT ;
 int NPTR_TYPE ;

__attribute__((used)) static u64 flexrm_next_table_desc(u32 toggle, dma_addr_t next_addr)
{
 u64 desc = 0;

 DESC_ENC(desc, NPTR_TYPE, DESC_TYPE_SHIFT, DESC_TYPE_MASK);
 DESC_ENC(desc, toggle, NPTR_TOGGLE_SHIFT, NPTR_TOGGLE_MASK);
 DESC_ENC(desc, next_addr, NPTR_ADDR_SHIFT, NPTR_ADDR_MASK);

 return desc;
}
