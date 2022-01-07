
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn10_dpp {int dummy; } ;


 int CM_GAMUT_REMAP_CONTROL ;
 int CM_GAMUT_REMAP_MODE ;
 int REG_SET (int ,int ,int ,int ) ;

void dpp_set_gamut_remap_bypass(struct dcn10_dpp *dpp)
{
 REG_SET(CM_GAMUT_REMAP_CONTROL, 0,
   CM_GAMUT_REMAP_MODE, 0);

}
