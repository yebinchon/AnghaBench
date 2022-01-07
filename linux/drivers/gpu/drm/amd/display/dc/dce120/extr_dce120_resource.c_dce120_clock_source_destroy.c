
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_source {int dummy; } ;


 int TO_DCE110_CLK_SRC (struct clock_source*) ;
 int kfree (int ) ;

__attribute__((used)) static void dce120_clock_source_destroy(struct clock_source **clk_src)
{
 kfree(TO_DCE110_CLK_SRC(*clk_src));
 *clk_src = ((void*)0);
}
