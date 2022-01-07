
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_tcon {int ipg_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;

void fsl_tcon_free(struct fsl_tcon *tcon)
{
 clk_disable_unprepare(tcon->ipg_clk);
 clk_put(tcon->ipg_clk);
}
