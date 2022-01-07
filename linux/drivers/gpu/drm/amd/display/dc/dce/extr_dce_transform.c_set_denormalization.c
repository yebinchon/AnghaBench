
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_transform {int dummy; } ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;
 int DENORM_CONTROL ;
 int DENORM_MODE ;
 int REG_SET (int ,int ,int ,int) ;

__attribute__((used)) static void set_denormalization(
 struct dce_transform *xfm_dce,
 enum dc_color_depth depth)
{
 int denorm_mode = 0;

 switch (depth) {
 case 129:

  denorm_mode = 1;
  break;
 case 128:


  denorm_mode = 0;
  break;
 case 133:

  denorm_mode = 3;
  break;
 case 132:

  denorm_mode = 5;
  break;
 case 131:
 case 130:
 default:

  break;
 }

 REG_SET(DENORM_CONTROL, 0, DENORM_MODE, denorm_mode);
}
