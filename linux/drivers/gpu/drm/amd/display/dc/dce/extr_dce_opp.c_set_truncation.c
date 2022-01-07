
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dce110_opp {int dummy; } ;
struct TYPE_2__ {int TRUNCATE_DEPTH; scalar_t__ TRUNCATE_ENABLED; int TRUNCATE_MODE; } ;
struct bit_depth_reduction_params {scalar_t__ pixel_encoding; TYPE_1__ flags; } ;


 int FMT_BIT_DEPTH_CONTROL ;
 int FMT_TRUNCATE_DEPTH ;
 int FMT_TRUNCATE_EN ;
 int FMT_TRUNCATE_MODE ;
 scalar_t__ PIXEL_ENCODING_YCBCR422 ;
 int REG_UPDATE_3 (int ,int ,int,int ,int,int ,int ) ;

__attribute__((used)) static void set_truncation(
  struct dce110_opp *opp110,
  const struct bit_depth_reduction_params *params)
{

 REG_UPDATE_3(FMT_BIT_DEPTH_CONTROL,
   FMT_TRUNCATE_EN, 0,
   FMT_TRUNCATE_DEPTH, 0,
   FMT_TRUNCATE_MODE, 0);


 if (params->pixel_encoding == PIXEL_ENCODING_YCBCR422) {

  if (params->flags.TRUNCATE_DEPTH == 1)
   REG_UPDATE_3(FMT_BIT_DEPTH_CONTROL,
     FMT_TRUNCATE_EN, 1,
     FMT_TRUNCATE_DEPTH, 1,
     FMT_TRUNCATE_MODE, 0);
  else if (params->flags.TRUNCATE_DEPTH == 2)

   REG_UPDATE_3(FMT_BIT_DEPTH_CONTROL,
     FMT_TRUNCATE_EN, 1,
     FMT_TRUNCATE_DEPTH, 2,
     FMT_TRUNCATE_MODE, 0);
  return;
 }

 if (params->flags.TRUNCATE_ENABLED == 0)
  return;

 REG_UPDATE_3(FMT_BIT_DEPTH_CONTROL,
    FMT_TRUNCATE_EN, 1,
    FMT_TRUNCATE_DEPTH,
    params->flags.TRUNCATE_DEPTH,
    FMT_TRUNCATE_MODE,
    params->flags.TRUNCATE_MODE);
}
