
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_desc {int* qw; } ;


 int SDMA_DESC1_GENERATION_SHIFT ;
 int SDMA_DESC1_GENERATION_SMASK ;

__attribute__((used)) static inline int sdma_mapping_type(struct sdma_desc *d)
{
 return (d->qw[1] & SDMA_DESC1_GENERATION_SMASK)
  >> SDMA_DESC1_GENERATION_SHIFT;
}
