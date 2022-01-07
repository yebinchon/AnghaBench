
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcn10_opp {int dummy; } ;
struct TYPE_2__ {int FRAME_RANDOM; int SPATIAL_DITHER_DEPTH; int RGB_RANDOM; int HIGHPASS_RANDOM; int SPATIAL_DITHER_MODE; int SPATIAL_DITHER_ENABLED; } ;
struct bit_depth_reduction_params {TYPE_1__ flags; int b_seed_value; int g_seed_value; int r_seed_value; } ;


 int FMT_BIT_DEPTH_CONTROL ;
 int FMT_CONTROL ;
 int FMT_DITHER_RAND_B_SEED ;
 int FMT_DITHER_RAND_G_SEED ;
 int FMT_DITHER_RAND_R_SEED ;
 int FMT_FRAME_RANDOM_ENABLE ;
 int FMT_HIGHPASS_RANDOM_ENABLE ;
 int FMT_RAND_B_SEED ;
 int FMT_RAND_G_SEED ;
 int FMT_RAND_R_SEED ;
 int FMT_RGB_RANDOM_ENABLE ;
 int FMT_SPATIAL_DITHER_DEPTH ;
 int FMT_SPATIAL_DITHER_EN ;
 int FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP ;
 int FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX ;
 int FMT_SPATIAL_DITHER_MODE ;
 int FMT_TEMPORAL_DITHER_EN ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_UPDATE_6 (int ,int ,int ,int ,int ,int ,int,int ,int ,int ,int,int ,int ) ;
 int REG_UPDATE_7 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void opp1_set_spatial_dither(
 struct dcn10_opp *oppn10,
 const struct bit_depth_reduction_params *params)
{

 REG_UPDATE_7(FMT_BIT_DEPTH_CONTROL,
   FMT_SPATIAL_DITHER_EN, 0,
   FMT_SPATIAL_DITHER_MODE, 0,
   FMT_SPATIAL_DITHER_DEPTH, 0,
   FMT_TEMPORAL_DITHER_EN, 0,
   FMT_HIGHPASS_RANDOM_ENABLE, 0,
   FMT_FRAME_RANDOM_ENABLE, 0,
   FMT_RGB_RANDOM_ENABLE, 0);



 if (params->flags.FRAME_RANDOM == 1) {
  if (params->flags.SPATIAL_DITHER_DEPTH == 0 || params->flags.SPATIAL_DITHER_DEPTH == 1) {
   REG_UPDATE_2(FMT_CONTROL,
     FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, 15,
     FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, 2);
  } else if (params->flags.SPATIAL_DITHER_DEPTH == 2) {
   REG_UPDATE_2(FMT_CONTROL,
     FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, 3,
     FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, 1);
  } else {
   return;
  }
 } else {
  REG_UPDATE_2(FMT_CONTROL,
    FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, 0,
    FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, 0);
 }




 REG_SET(FMT_DITHER_RAND_R_SEED, 0,
   FMT_RAND_R_SEED, params->r_seed_value);

 REG_SET(FMT_DITHER_RAND_G_SEED, 0,
   FMT_RAND_G_SEED, params->g_seed_value);

 REG_SET(FMT_DITHER_RAND_B_SEED, 0,
   FMT_RAND_B_SEED, params->b_seed_value);
 REG_UPDATE_6(FMT_BIT_DEPTH_CONTROL,

   FMT_SPATIAL_DITHER_EN, params->flags.SPATIAL_DITHER_ENABLED,



   FMT_SPATIAL_DITHER_MODE, params->flags.SPATIAL_DITHER_MODE,

   FMT_SPATIAL_DITHER_DEPTH, params->flags.SPATIAL_DITHER_DEPTH,

   FMT_HIGHPASS_RANDOM_ENABLE, params->flags.HIGHPASS_RANDOM,

   FMT_FRAME_RANDOM_ENABLE, params->flags.FRAME_RANDOM,

   FMT_RGB_RANDOM_ENABLE, params->flags.RGB_RANDOM);
}
