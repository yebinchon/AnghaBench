
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct stv {TYPE_1__* base; } ;
struct TYPE_2__ {int adr; int i2c; } ;


 int i2c_read_regs16 (int ,int ,int ,int *,int) ;

__attribute__((used)) static int read_regs(struct stv *state, u16 reg, u8 *val, int len)
{
 return i2c_read_regs16(state->base->i2c, state->base->adr,
          reg, val, len);
}
