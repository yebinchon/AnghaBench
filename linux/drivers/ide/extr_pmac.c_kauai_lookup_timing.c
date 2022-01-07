
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kauai_timing {int cycle_time; int timing_reg; } ;


 int BUG () ;

__attribute__((used)) static inline u32
kauai_lookup_timing(struct kauai_timing* table, int cycle_time)
{
 int i;

 for (i=0; table[i].cycle_time; i++)
  if (cycle_time > table[i+1].cycle_time)
   return table[i].timing_reg;
 BUG();
 return 0;
}
