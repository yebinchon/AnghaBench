
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int iop3xx_aau_xor_slot_count(size_t len, int src_cnt,
     int *slots_per_op)
{
 static const char slot_count_table[] = {
      1, 1, 1, 1,
      2, 2, 2, 2,
      4, 4, 4, 4,
      4, 4, 4, 4,
      8, 8, 8, 8,
      8, 8, 8, 8,
      8, 8, 8, 8,
      8, 8, 8, 8,
           };
 *slots_per_op = slot_count_table[src_cnt - 1];
 return *slots_per_op;
}
