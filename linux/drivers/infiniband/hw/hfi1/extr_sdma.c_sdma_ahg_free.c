
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int ahg_bits; } ;


 int clear_bit (int,int *) ;
 int trace_hfi1_ahg_deallocate (struct sdma_engine*,int) ;

void sdma_ahg_free(struct sdma_engine *sde, int ahg_index)
{
 if (!sde)
  return;
 trace_hfi1_ahg_deallocate(sde, ahg_index);
 if (ahg_index < 0 || ahg_index > 31)
  return;
 clear_bit(ahg_index, &sde->ahg_bits);
}
