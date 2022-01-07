
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;
__attribute__((used)) static int get_color_depth(enum dc_color_depth color_depth)
{
 switch (color_depth) {
 case 129: return 6;
 case 128: return 8;
 case 133: return 10;
 case 132: return 12;
 case 131: return 14;
 case 130: return 16;
 default: return 0;
 }
}
