
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u64 ;


 int GEM_BUG_ON (int) ;
 unsigned long long gen8_pd_shift (int) ;

__attribute__((used)) static inline bool gen8_pd_contains(u64 start, u64 end, int lvl)
{
 const u64 mask = ~0ull << gen8_pd_shift(lvl + 1);

 GEM_BUG_ON(start >= end);
 return (start ^ end) & mask && (start & ~mask) == 0;
}
