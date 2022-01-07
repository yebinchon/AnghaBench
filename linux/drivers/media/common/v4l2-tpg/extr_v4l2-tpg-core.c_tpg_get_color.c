
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpg_data {int pattern; unsigned int src_width; } ;
typedef enum tpg_color { ____Placeholder_tpg_color } tpg_color ;
 int TPG_COLOR_RAMP ;
__attribute__((used)) static enum tpg_color tpg_get_color(const struct tpg_data *tpg,
        unsigned pat_line, unsigned x)
{


 static const enum tpg_color bars[3][8] = {

  { 150, 157,
    161, 160,
    159, 158,
    162, 170, },

  { 164, 163,
    168, 167,
    166, 165,
    169, 170, },

  { 150, 149,
    154, 153,
    152, 151,
    155, 156, },
 };

 switch (tpg->pattern) {
 case 145:
 case 148:
 case 132:
  return bars[tpg->pattern][((x * 8) / tpg->src_width) % 8];
 case 147:
  return bars[1][(pat_line + (x * 8) / tpg->src_width) % 8];
 case 146:
  return bars[1][pat_line];
 case 142:
  return 170;
 case 128:
  return 164;
 case 129:
  return 165;
 case 130:
  return 167;
 case 141:
  return 169;
 case 140:
  return (((x >> 4) & 1) ^ (pat_line & 1)) ?
   170 : 164;
 case 139:
  return ((x & 1) ^ (pat_line & 1)) ?
   164 : 170;
 case 137:
  return ((x & 1) ^ (pat_line & 1)) ?
   165 : 169;
 case 138:
  return (((x >> 1) & 1) ^ (pat_line & 1)) ?
   164 : 170;
 case 136:
  return (((x >> 1) & 1) ^ (pat_line & 1)) ?
   165 : 169;
 case 144:
  return pat_line ? 164 : 170;
 case 143:
  return (x & 1) ? 164 : 170;
 case 134:
  if (pat_line || (x % tpg->src_width) == tpg->src_width / 2)
   return 170;
  return 164;
 case 133:
  if (pat_line || ((x % tpg->src_width) + 1) / 2 == tpg->src_width / 4)
   return 170;
  return 164;
 case 135:
  if (pat_line || ((x % tpg->src_width) + 10) / 20 == tpg->src_width / 40)
   return 170;
  return 164;
 case 131:
  return TPG_COLOR_RAMP + ((x % tpg->src_width) * 256) / tpg->src_width;
 default:
  return 165;
 }
}
