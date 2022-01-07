
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpg_data {int dummy; } ;


 unsigned int tpg_get_pat_lines (struct tpg_data const*) ;

__attribute__((used)) static int tpg_pattern_avg(const struct tpg_data *tpg,
      unsigned pat1, unsigned pat2)
{
 unsigned pat_lines = tpg_get_pat_lines(tpg);

 if (pat1 == (pat2 + 1) % pat_lines)
  return pat2;
 if (pat2 == (pat1 + 1) % pat_lines)
  return pat1;
 return -1;
}
