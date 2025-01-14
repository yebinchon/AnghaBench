
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_stat {int stat_flags; } ;


 int STAT_PRECISE_TIMESTAMPS ;
 void* jiffies_to_msecs (unsigned long long) ;

__attribute__((used)) static unsigned long long dm_jiffies_to_msec64(struct dm_stat *s, unsigned long long j)
{
 unsigned long long result;
 unsigned mult;

 if (s->stat_flags & STAT_PRECISE_TIMESTAMPS)
  return j;

 result = 0;
 if (j)
  result = jiffies_to_msecs(j & 0x3fffff);
 if (j >= 1 << 22) {
  mult = jiffies_to_msecs(1 << 22);
  result += (unsigned long long)mult * (unsigned long long)jiffies_to_msecs((j >> 22) & 0x3fffff);
 }
 if (j >= 1ULL << 44)
  result += (unsigned long long)mult * (unsigned long long)mult * (unsigned long long)jiffies_to_msecs(j >> 44);

 return result;
}
