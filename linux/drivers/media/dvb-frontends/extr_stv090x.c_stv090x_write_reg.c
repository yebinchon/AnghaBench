
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv090x_state {int dummy; } ;


 int stv090x_write_regs (struct stv090x_state*,unsigned int,int *,int) ;

__attribute__((used)) static int stv090x_write_reg(struct stv090x_state *state, unsigned int reg, u8 data)
{
 u8 tmp = data;

 return stv090x_write_regs(state, reg, &tmp, 1);
}
