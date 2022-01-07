
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct si2165_state {int adc_clk; } ;



__attribute__((used)) static u32 si2165_get_fe_clk(struct si2165_state *state)
{

 return state->adc_clk;
}
