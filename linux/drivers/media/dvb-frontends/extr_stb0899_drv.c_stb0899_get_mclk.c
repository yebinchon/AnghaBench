
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stb0899_state {int verbose; TYPE_1__* config; } ;
struct TYPE_2__ {int xtal_freq; } ;


 int FE_DEBUG ;
 int STB0899_NCOARSE ;
 int dprintk (int ,int ,int,char*,int,int) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;

__attribute__((used)) static u32 stb0899_get_mclk(struct stb0899_state *state)
{
 u32 mclk = 0, div = 0;

 div = stb0899_read_reg(state, STB0899_NCOARSE);
 mclk = (div + 1) * state->config->xtal_freq / 6;
 dprintk(state->verbose, FE_DEBUG, 1, "div=%d, mclk=%d", div, mclk);

 return mclk;
}
