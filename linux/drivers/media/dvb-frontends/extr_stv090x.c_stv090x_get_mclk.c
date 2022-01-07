
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv090x_state {struct stv090x_config* config; } ;
struct stv090x_config {int xtal; } ;


 int SELX1RATIO_FIELD ;
 scalar_t__ STV090x_GETFIELD (int,int ) ;
 int STV090x_NCOARSE ;
 int STV090x_SYNTCTRL ;
 int stv090x_read_reg (struct stv090x_state*,int ) ;

__attribute__((used)) static u32 stv090x_get_mclk(struct stv090x_state *state)
{
 const struct stv090x_config *config = state->config;
 u32 div, reg;
 u8 ratio;

 div = stv090x_read_reg(state, STV090x_NCOARSE);
 reg = stv090x_read_reg(state, STV090x_SYNTCTRL);
 ratio = STV090x_GETFIELD(reg, SELX1RATIO_FIELD) ? 4 : 6;

 return (div + 1) * config->xtal / ratio;
}
