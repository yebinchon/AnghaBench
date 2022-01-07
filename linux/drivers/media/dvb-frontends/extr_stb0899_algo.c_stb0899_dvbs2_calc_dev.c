
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_internal {int master_clk; int srate; } ;
struct stb0899_state {struct stb0899_internal internal; } ;



__attribute__((used)) static u32 stb0899_dvbs2_calc_dev(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 u32 dec_ratio, correction, master_clk, srate;

 dec_ratio = (internal->master_clk * 2) / (5 * internal->srate);
 dec_ratio = (dec_ratio == 0) ? 1 : dec_ratio;

 master_clk = internal->master_clk / 1000;
 srate = internal->srate / 1000;
 correction = (512 * master_clk) / (2 * dec_ratio * srate);

 return correction;
}
