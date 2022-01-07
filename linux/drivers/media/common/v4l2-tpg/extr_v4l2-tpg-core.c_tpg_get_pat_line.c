
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpg_data {int pattern; unsigned int src_height; } ;
__attribute__((used)) static unsigned tpg_get_pat_line(const struct tpg_data *tpg, unsigned line)
{
 switch (tpg->pattern) {
 case 135:
  return (line >> 4) & 1;
 case 134:
 case 132:
 case 136:
  return line & 1;
 case 133:
 case 131:
  return (line & 2) >> 1;
 case 138:
 case 137:
  return (line * 8) / tpg->src_height;
 case 129:
  return line == tpg->src_height / 2;
 case 128:
  return (line + 1) / 2 == tpg->src_height / 4;
 case 130:
  return (line + 10) / 20 == tpg->src_height / 40;
 default:
  return 0;
 }
}
