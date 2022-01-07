
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_kms {scalar_t__ axi_clk; scalar_t__ lut_clk; scalar_t__ pclk; scalar_t__ clk; } ;


 int DBG (char*) ;
 int clk_disable_unprepare (scalar_t__) ;

int mdp4_disable(struct mdp4_kms *mdp4_kms)
{
 DBG("");

 clk_disable_unprepare(mdp4_kms->clk);
 if (mdp4_kms->pclk)
  clk_disable_unprepare(mdp4_kms->pclk);
 if (mdp4_kms->lut_clk)
  clk_disable_unprepare(mdp4_kms->lut_clk);
 if (mdp4_kms->axi_clk)
  clk_disable_unprepare(mdp4_kms->axi_clk);

 return 0;
}
