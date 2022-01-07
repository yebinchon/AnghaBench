
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct stb0899_state {int verbose; } ;


 int FE_DEBUG ;
 int STB0899_SFRH ;
 int dprintk (int ,int ,int,char*) ;
 int stb0899_do_div (int,int) ;
 int stb0899_write_regs (struct stb0899_state*,int ,int*,int) ;

__attribute__((used)) static u32 stb0899_set_srate(struct stb0899_state *state, u32 master_clk, u32 srate)
{
 u32 tmp;
 u8 sfr[3];

 dprintk(state->verbose, FE_DEBUG, 1, "-->");
 tmp = stb0899_do_div((((u64)srate) << 21) + master_clk, 2 * master_clk);
 tmp <<= 4;

 sfr[0] = tmp >> 16;
 sfr[1] = tmp >> 8;
 sfr[2] = tmp;

 stb0899_write_regs(state, STB0899_SFRH, sfr, 3);

 return srate;
}
