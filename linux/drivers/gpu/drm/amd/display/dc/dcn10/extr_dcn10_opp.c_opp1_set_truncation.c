
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcn10_opp {int dummy; } ;
struct TYPE_2__ {int TRUNCATE_MODE; int TRUNCATE_DEPTH; int TRUNCATE_ENABLED; } ;
struct bit_depth_reduction_params {TYPE_1__ flags; } ;


 int FMT_BIT_DEPTH_CONTROL ;
 int FMT_TRUNCATE_DEPTH ;
 int FMT_TRUNCATE_EN ;
 int FMT_TRUNCATE_MODE ;
 int REG_UPDATE_3 (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void opp1_set_truncation(
  struct dcn10_opp *oppn10,
  const struct bit_depth_reduction_params *params)
{
 REG_UPDATE_3(FMT_BIT_DEPTH_CONTROL,
  FMT_TRUNCATE_EN, params->flags.TRUNCATE_ENABLED,
  FMT_TRUNCATE_DEPTH, params->flags.TRUNCATE_DEPTH,
  FMT_TRUNCATE_MODE, params->flags.TRUNCATE_MODE);
}
