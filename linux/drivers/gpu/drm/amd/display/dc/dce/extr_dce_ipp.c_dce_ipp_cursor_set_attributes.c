
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct input_pixel_processor {int dummy; } ;
struct dce_ipp {int dummy; } ;
struct TYPE_6__ {int low_part; int high_part; } ;
struct TYPE_4__ {int INVERSE_TRANSPARENT_CLAMPING; int ENABLE_MAGNIFICATION; } ;
struct TYPE_5__ {TYPE_1__ bits; } ;
struct dc_cursor_attributes {int color_format; TYPE_3__ address; scalar_t__ height; scalar_t__ width; TYPE_2__ attribute_flags; } ;


 int BREAK_TO_DEBUGGER () ;
 int CURSOR_2X_MAGNIFY ;
 int CURSOR_HEIGHT ;
 int CURSOR_MODE ;




 int CURSOR_SURFACE_ADDRESS ;
 int CURSOR_SURFACE_ADDRESS_HIGH ;
 int CURSOR_UPDATE_LOCK ;
 int CURSOR_WIDTH ;
 int CUR_COLOR1 ;
 int CUR_COLOR1_BLUE ;
 int CUR_COLOR1_GREEN ;
 int CUR_COLOR1_RED ;
 int CUR_COLOR2 ;
 int CUR_COLOR2_BLUE ;
 int CUR_COLOR2_GREEN ;
 int CUR_COLOR2_RED ;
 int CUR_CONTROL ;
 int CUR_INV_TRANS_CLAMP ;
 int CUR_SIZE ;
 int CUR_SURFACE_ADDRESS ;
 int CUR_SURFACE_ADDRESS_HIGH ;
 int CUR_UPDATE ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_SET_2 (int ,int ,int ,scalar_t__,int ,scalar_t__) ;
 int REG_SET_3 (int ,int ,int ,int,int ,int,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int ,int ,int ) ;
 struct dce_ipp* TO_DCE_IPP (struct input_pixel_processor*) ;

__attribute__((used)) static void dce_ipp_cursor_set_attributes(
 struct input_pixel_processor *ipp,
 const struct dc_cursor_attributes *attributes)
{
 struct dce_ipp *ipp_dce = TO_DCE_IPP(ipp);
 int mode;


 REG_UPDATE(CUR_UPDATE, CURSOR_UPDATE_LOCK, 1);


 switch (attributes->color_format) {
 case 128:
  mode = 0;
  break;
 case 131:
  mode = 1;
  break;
 case 130:
  mode = 2;
  break;
 case 129:
  mode = 3;
  break;
 default:
  BREAK_TO_DEBUGGER();
  mode = 0;
 }

 REG_UPDATE_3(CUR_CONTROL,
  CURSOR_MODE, mode,
  CURSOR_2X_MAGNIFY, attributes->attribute_flags.bits.ENABLE_MAGNIFICATION,
  CUR_INV_TRANS_CLAMP, attributes->attribute_flags.bits.INVERSE_TRANSPARENT_CLAMPING);

 if (attributes->color_format == 128) {
  REG_SET_3(CUR_COLOR1, 0,
   CUR_COLOR1_BLUE, 0,
   CUR_COLOR1_GREEN, 0,
   CUR_COLOR1_RED, 0);

  REG_SET_3(CUR_COLOR2, 0,
   CUR_COLOR2_BLUE, 0xff,
   CUR_COLOR2_GREEN, 0xff,
   CUR_COLOR2_RED, 0xff);
 }





 REG_SET_2(CUR_SIZE, 0,
  CURSOR_WIDTH, attributes->width-1,
  CURSOR_HEIGHT, attributes->height-1);







 REG_SET(CUR_SURFACE_ADDRESS_HIGH, 0,
  CURSOR_SURFACE_ADDRESS_HIGH, attributes->address.high_part);

 REG_SET(CUR_SURFACE_ADDRESS, 0,
  CURSOR_SURFACE_ADDRESS, attributes->address.low_part);


 REG_UPDATE(CUR_UPDATE, CURSOR_UPDATE_LOCK, 0);
}
