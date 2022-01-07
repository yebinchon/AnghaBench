
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpg_data {int pattern; } ;
__attribute__((used)) static unsigned tpg_get_pat_lines(const struct tpg_data *tpg)
{
 switch (tpg->pattern) {
 case 135:
 case 133:
 case 134:
 case 131:
 case 132:
 case 136:
 case 129:
 case 128:
 case 130:
  return 2;
 case 138:
 case 137:
  return 8;
 default:
  return 1;
 }
}
