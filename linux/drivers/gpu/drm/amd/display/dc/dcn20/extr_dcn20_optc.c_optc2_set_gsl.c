
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct gsl_params {int gsl_master_mode; int gsl_master_en; int gsl2_en; int gsl1_en; int gsl0_en; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_GSL0_EN ;
 int OTG_GSL1_EN ;
 int OTG_GSL2_EN ;
 int OTG_GSL_CONTROL ;
 int OTG_GSL_MASTER_EN ;
 int OTG_GSL_MASTER_MODE ;
 int REG_UPDATE_5 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void optc2_set_gsl(struct timing_generator *optc,
     const struct gsl_params *params)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);






 REG_UPDATE_5(OTG_GSL_CONTROL,
  OTG_GSL0_EN, params->gsl0_en,
  OTG_GSL1_EN, params->gsl1_en,
  OTG_GSL2_EN, params->gsl2_en,
  OTG_GSL_MASTER_EN, params->gsl_master_en,
  OTG_GSL_MASTER_MODE, params->gsl_master_mode);
}
