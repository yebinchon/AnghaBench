
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int symbol_rate; int clkdiv; int ratediv; } ;
struct cx24120_state {TYPE_2__ dnxt; TYPE_1__* i2c; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static int cx24120_set_symbolrate(struct cx24120_state *state, u32 rate)
{
 dev_dbg(&state->i2c->dev, "(%d)\n", rate);

 state->dnxt.symbol_rate = rate;


 if (rate > 31000000) {
  state->dnxt.clkdiv = (-(rate < 31000001) & 3) + 2;
  state->dnxt.ratediv = (-(rate < 31000001) & 6) + 4;
 } else {
  state->dnxt.clkdiv = 3;
  state->dnxt.ratediv = 6;
 }

 return 0;
}
