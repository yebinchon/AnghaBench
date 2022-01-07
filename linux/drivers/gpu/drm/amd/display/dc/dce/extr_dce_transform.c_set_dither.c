
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_transform {int dummy; } ;
typedef enum dcp_spatial_dither_mode { ____Placeholder_dcp_spatial_dither_mode } dcp_spatial_dither_mode ;
typedef enum dcp_spatial_dither_depth { ____Placeholder_dcp_spatial_dither_depth } dcp_spatial_dither_depth ;


 int BREAK_TO_DEBUGGER () ;
 int DCP_FRAME_RANDOM_ENABLE ;
 int DCP_HIGHPASS_RANDOM_ENABLE ;
 int DCP_RGB_RANDOM_ENABLE ;
 int DCP_SPATIAL_DITHER_CNTL ;
 int DCP_SPATIAL_DITHER_DEPTH ;


 int DCP_SPATIAL_DITHER_EN ;
 int DCP_SPATIAL_DITHER_MODE ;




 int REG_SET_6 (int ,int ,int ,int,int ,int,int ,int,int ,int,int ,int,int ,int) ;

__attribute__((used)) static void set_dither(
 struct dce_transform *xfm_dce,
 bool dither_enable,
 enum dcp_spatial_dither_mode dither_mode,
 enum dcp_spatial_dither_depth dither_depth,
 bool frame_random_enable,
 bool rgb_random_enable,
 bool highpass_random_enable)
{
 int dither_depth_bits = 0;
 int dither_mode_bits = 0;

 switch (dither_mode) {
 case 131:
  dither_mode_bits = 0;
  break;
 case 128:
  dither_mode_bits = 1;
  break;
 case 130:
  dither_mode_bits = 2;
  break;
 case 129:
  dither_mode_bits = 3;
  break;
 default:

  BREAK_TO_DEBUGGER();
 }

 switch (dither_depth) {
 case 132:
  dither_depth_bits = 0;
  break;
 case 133:
  dither_depth_bits = 1;
  break;
 default:

  BREAK_TO_DEBUGGER();
 }


 REG_SET_6(DCP_SPATIAL_DITHER_CNTL, 0,
   DCP_SPATIAL_DITHER_EN, dither_enable,
   DCP_SPATIAL_DITHER_MODE, dither_mode_bits,
   DCP_SPATIAL_DITHER_DEPTH, dither_depth_bits,
   DCP_FRAME_RANDOM_ENABLE, frame_random_enable,
   DCP_RGB_RANDOM_ENABLE, rgb_random_enable,
   DCP_HIGHPASS_RANDOM_ENABLE, highpass_random_enable);
}
