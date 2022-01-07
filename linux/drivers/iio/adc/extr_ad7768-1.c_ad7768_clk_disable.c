
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7768_state {int mclk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void ad7768_clk_disable(void *data)
{
 struct ad7768_state *st = data;

 clk_disable_unprepare(st->mclk);
}
