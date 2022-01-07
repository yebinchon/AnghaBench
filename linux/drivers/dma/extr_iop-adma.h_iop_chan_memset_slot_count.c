
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int iop_chan_memset_slot_count(size_t len, int *slots_per_op)
{
 *slots_per_op = 1;
 return 1;
}
