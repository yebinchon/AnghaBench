
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dce110_opp {TYPE_1__* opp_mask; } ;
struct TYPE_4__ {scalar_t__ SPATIAL_DITHER_ENABLED; int SPATIAL_DITHER_DEPTH; int FRAME_RANDOM; int HIGHPASS_RANDOM; int RGB_RANDOM; int SPATIAL_DITHER_MODE; } ;
struct bit_depth_reduction_params {TYPE_2__ flags; int b_seed_value; int g_seed_value; int r_seed_value; } ;
struct TYPE_3__ {scalar_t__ FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP; scalar_t__ FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX; } ;


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
 int REG_UPDATE (int ,int ,int ) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int,int ,int) ;

__attribute__((used)) static void set_spatial_dither(
 struct dce110_opp *opp110,
 const struct bit_depth_reduction_params *params)
{

 REG_UPDATE_3(FMT_BIT_DEPTH_CONTROL,
  FMT_SPATIAL_DITHER_EN, 0,
  FMT_SPATIAL_DITHER_DEPTH, 0,
  FMT_SPATIAL_DITHER_MODE, 0);

 REG_UPDATE_3(FMT_BIT_DEPTH_CONTROL,
  FMT_HIGHPASS_RANDOM_ENABLE, 0,
  FMT_FRAME_RANDOM_ENABLE, 0,
  FMT_RGB_RANDOM_ENABLE, 0);

 REG_UPDATE(FMT_BIT_DEPTH_CONTROL,
  FMT_TEMPORAL_DITHER_EN, 0);


 if (params->flags.SPATIAL_DITHER_ENABLED == 0 ||
  params->flags.SPATIAL_DITHER_DEPTH == 2)
  return;



 if (opp110->opp_mask->FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX &&
   opp110->opp_mask->FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP) {
  if (params->flags.FRAME_RANDOM == 1) {
   if (params->flags.SPATIAL_DITHER_DEPTH == 0 ||
   params->flags.SPATIAL_DITHER_DEPTH == 1) {
    REG_UPDATE_2(FMT_CONTROL,
     FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, 15,
     FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, 2);
   } else if (params->flags.SPATIAL_DITHER_DEPTH == 2) {
    REG_UPDATE_2(FMT_CONTROL,
     FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, 3,
     FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, 1);
   } else
    return;
  } else {
   REG_UPDATE_2(FMT_CONTROL,
     FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, 0,
     FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, 0);
  }
 }



 REG_UPDATE(FMT_DITHER_RAND_R_SEED,
   FMT_RAND_R_SEED, params->r_seed_value);

 REG_UPDATE(FMT_DITHER_RAND_G_SEED,
   FMT_RAND_G_SEED, params->g_seed_value);

 REG_UPDATE(FMT_DITHER_RAND_B_SEED,
   FMT_RAND_B_SEED, params->b_seed_value);
 REG_UPDATE_3(FMT_BIT_DEPTH_CONTROL,
  FMT_HIGHPASS_RANDOM_ENABLE, params->flags.HIGHPASS_RANDOM,
  FMT_FRAME_RANDOM_ENABLE, params->flags.FRAME_RANDOM,
  FMT_RGB_RANDOM_ENABLE, params->flags.RGB_RANDOM);






 REG_UPDATE_3(FMT_BIT_DEPTH_CONTROL,
  FMT_SPATIAL_DITHER_DEPTH, params->flags.SPATIAL_DITHER_DEPTH,
  FMT_SPATIAL_DITHER_MODE, params->flags.SPATIAL_DITHER_MODE,
  FMT_SPATIAL_DITHER_EN, 1);
}
