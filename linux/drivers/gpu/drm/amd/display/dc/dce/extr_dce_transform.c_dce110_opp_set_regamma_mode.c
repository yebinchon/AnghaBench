
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transform {int dummy; } ;
struct dce_transform {int dummy; } ;
typedef enum opp_regamma { ____Placeholder_opp_regamma } opp_regamma ;


 int GRPH_REGAMMA_MODE ;
 int REGAMMA_CONTROL ;
 int REG_SET (int ,int ,int ,int) ;
 struct dce_transform* TO_DCE_TRANSFORM (struct transform*) ;

void dce110_opp_set_regamma_mode(struct transform *xfm,
     enum opp_regamma mode)
{
 struct dce_transform *xfm_dce = TO_DCE_TRANSFORM(xfm);

 REG_SET(REGAMMA_CONTROL, 0,
  GRPH_REGAMMA_MODE, mode);
}
