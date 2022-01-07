
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;


 int BREAK_TO_DEBUGGER () ;
 int CROSSBAR_SRC_CB_B ;
 int CROSSBAR_SRC_CR_R ;
 int DCSURF_SURFACE_CONFIG ;
 int HUBPRET_CONTROL ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int SURFACE_PIXEL_FORMAT ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;

void hubp1_program_pixel_format(
 struct hubp *hubp,
 enum surface_pixel_format format)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);
 uint32_t red_bar = 3;
 uint32_t blue_bar = 2;


 if (format == 144
   || format == 146
   || format == 145
   || format == 147) {
  red_bar = 2;
  blue_bar = 3;
 }

 REG_UPDATE_2(HUBPRET_CONTROL,
   CROSSBAR_SRC_CB_B, blue_bar,
   CROSSBAR_SRC_CR_R, red_bar);



 switch (format) {
 case 143:
  REG_UPDATE(DCSURF_SURFACE_CONFIG,
    SURFACE_PIXEL_FORMAT, 1);
  break;
 case 134:
  REG_UPDATE(DCSURF_SURFACE_CONFIG,
    SURFACE_PIXEL_FORMAT, 3);
  break;
 case 139:
 case 144:
  REG_UPDATE(DCSURF_SURFACE_CONFIG,
    SURFACE_PIXEL_FORMAT, 8);
  break;
 case 140:
 case 146:
 case 145:
  REG_UPDATE(DCSURF_SURFACE_CONFIG,
    SURFACE_PIXEL_FORMAT, 10);
  break;
 case 142:
  REG_UPDATE(DCSURF_SURFACE_CONFIG,
    SURFACE_PIXEL_FORMAT, 22);
  break;
 case 141:
 case 147:
  REG_UPDATE(DCSURF_SURFACE_CONFIG,
    SURFACE_PIXEL_FORMAT, 24);
  break;

 case 131:
  REG_UPDATE(DCSURF_SURFACE_CONFIG,
    SURFACE_PIXEL_FORMAT, 65);
  break;
 case 130:
  REG_UPDATE(DCSURF_SURFACE_CONFIG,
    SURFACE_PIXEL_FORMAT, 64);
  break;
 case 133:
  REG_UPDATE(DCSURF_SURFACE_CONFIG,
    SURFACE_PIXEL_FORMAT, 67);
  break;
 case 132:
  REG_UPDATE(DCSURF_SURFACE_CONFIG,
    SURFACE_PIXEL_FORMAT, 66);
  break;
 case 128:
  REG_UPDATE(DCSURF_SURFACE_CONFIG,
    SURFACE_PIXEL_FORMAT, 12);
  break;
 default:
  BREAK_TO_DEBUGGER();
  break;
 }


}
