
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array_mode; } ;
union dc_tiling_info {TYPE_1__ gfx8; } ;
typedef enum mi_tiling_format { ____Placeholder_mi_tiling_format } mi_tiling_format ;
 int mi_tiling_1D ;
 int mi_tiling_2D ;
 int mi_tiling_linear ;

__attribute__((used)) static enum mi_tiling_format get_mi_tiling(
  union dc_tiling_info *tiling_info)
{
 switch (tiling_info->gfx8.array_mode) {
 case 136:
 case 137:
 case 128:
  return mi_tiling_1D;
 case 134:
 case 135:
 case 133:
 case 129:
 case 130:
  return mi_tiling_2D;
 case 131:
 case 132:
  return mi_tiling_linear;
 default:
  return mi_tiling_2D;
 }
}
