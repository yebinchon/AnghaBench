
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_tcon {int clk; int sclk0; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void sun4i_tcon_free_clocks(struct sun4i_tcon *tcon)
{
 clk_disable_unprepare(tcon->sclk0);
 clk_disable_unprepare(tcon->clk);
}
