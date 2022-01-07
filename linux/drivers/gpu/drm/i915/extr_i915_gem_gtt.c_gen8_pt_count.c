
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GEM_BUG_ON (int) ;
 int GEN8_PDES ;
 int gen8_pd_shift (int) ;

__attribute__((used)) static inline unsigned int gen8_pt_count(u64 start, u64 end)
{
 GEM_BUG_ON(start >= end);
 if ((start ^ end) >> gen8_pd_shift(1))
  return GEN8_PDES - (start & (GEN8_PDES - 1));
 else
  return end - start;
}
