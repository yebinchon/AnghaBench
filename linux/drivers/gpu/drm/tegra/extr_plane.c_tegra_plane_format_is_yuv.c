
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool tegra_plane_format_is_yuv(unsigned int format, bool *planar)
{
 switch (format) {
 case 136:
 case 131:
  if (planar)
   *planar = 0;

  return 1;

 case 137:
 case 132:
 case 135:
 case 130:
 case 134:
 case 129:
 case 133:
 case 128:
  if (planar)
   *planar = 1;

  return 1;
 }

 if (planar)
  *planar = 0;

 return 0;
}
