
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int * gi_mask; } ;


 scalar_t__ CCE_INT_MAP ;
 int CCE_NUM_INT_CSRS ;
 int CCE_NUM_INT_MAP_CSRS ;
 int write_csr (struct hfi1_devdata*,scalar_t__,int ) ;

void reset_interrupts(struct hfi1_devdata *dd)
{
 int i;


 for (i = 0; i < CCE_NUM_INT_CSRS; i++)
  dd->gi_mask[i] = ~(u64)0;


 for (i = 0; i < CCE_NUM_INT_MAP_CSRS; i++)
  write_csr(dd, CCE_INT_MAP + (8 * i), 0);
}
