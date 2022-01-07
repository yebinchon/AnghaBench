
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_kms {scalar_t__ lut_clk; scalar_t__ core_clk; scalar_t__ axi_clk; scalar_t__ ahb_clk; int enable_count; } ;


 int DBG (char*) ;
 int clk_prepare_enable (scalar_t__) ;

int mdp5_enable(struct mdp5_kms *mdp5_kms)
{
 DBG("");

 mdp5_kms->enable_count++;

 clk_prepare_enable(mdp5_kms->ahb_clk);
 clk_prepare_enable(mdp5_kms->axi_clk);
 clk_prepare_enable(mdp5_kms->core_clk);
 if (mdp5_kms->lut_clk)
  clk_prepare_enable(mdp5_kms->lut_clk);

 return 0;
}
