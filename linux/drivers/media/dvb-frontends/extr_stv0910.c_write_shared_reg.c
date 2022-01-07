
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct stv {TYPE_1__* base; } ;
struct TYPE_2__ {int reg_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_reg (struct stv*,int ,int*) ;
 int write_reg (struct stv*,int ,int) ;

__attribute__((used)) static int write_shared_reg(struct stv *state, u16 reg, u8 mask, u8 val)
{
 int status;
 u8 tmp;

 mutex_lock(&state->base->reg_lock);
 status = read_reg(state, reg, &tmp);
 if (!status)
  status = write_reg(state, reg, (tmp & ~mask) | (val & mask));
 mutex_unlock(&state->base->reg_lock);
 return status;
}
