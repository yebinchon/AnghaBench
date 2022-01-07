
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_tcon {int dclk; } ;


 int clk_unregister (int ) ;

int sun4i_dclk_free(struct sun4i_tcon *tcon)
{
 clk_unregister(tcon->dclk);
 return 0;
}
