
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_adma_desc_slot {int idx; } ;



__attribute__((used)) static inline int iop_desc_is_aligned(struct iop_adma_desc_slot *desc,
     int num_slots)
{

 return (desc->idx & (num_slots - 1)) ? 0 : 1;
}
