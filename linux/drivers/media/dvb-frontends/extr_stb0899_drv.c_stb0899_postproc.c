
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct stb0899_state {struct stb0899_config* config; } ;
struct stb0899_postproc {scalar_t__ level; int gpio; } ;
struct stb0899_config {struct stb0899_postproc* postproc; } ;


 scalar_t__ STB0899_GPIOPULLUP ;
 int stb0899_write_reg (struct stb0899_state*,int ,int) ;

__attribute__((used)) static int stb0899_postproc(struct stb0899_state *state, u8 ctl, int enable)
{
 struct stb0899_config *config = state->config;
 const struct stb0899_postproc *postproc = config->postproc;


 if (postproc) {
  if (enable) {
   if (postproc[ctl].level == STB0899_GPIOPULLUP)
    stb0899_write_reg(state, postproc[ctl].gpio, 0x02);
   else
    stb0899_write_reg(state, postproc[ctl].gpio, 0x82);
  } else {
   if (postproc[ctl].level == STB0899_GPIOPULLUP)
    stb0899_write_reg(state, postproc[ctl].gpio, 0x82);
   else
    stb0899_write_reg(state, postproc[ctl].gpio, 0x02);
  }
 }
 return 0;
}
