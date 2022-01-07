
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf4371_state {int clkin; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void adf4371_clk_disable(void *data)
{
 struct adf4371_state *st = data;

 clk_disable_unprepare(st->clkin);
}
