
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_desc {size_t* qw; } ;


 size_t SDMA_DESC0_BYTE_COUNT_SHIFT ;
 size_t SDMA_DESC0_BYTE_COUNT_SMASK ;

__attribute__((used)) static inline size_t sdma_mapping_len(struct sdma_desc *d)
{
 return (d->qw[0] & SDMA_DESC0_BYTE_COUNT_SMASK)
  >> SDMA_DESC0_BYTE_COUNT_SHIFT;
}
