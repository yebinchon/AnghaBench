
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv {int dummy; } ;


 int read_reg (struct stv*,int,int*) ;
 int write_reg (struct stv*,int,int) ;

__attribute__((used)) static int write_field(struct stv *state, u32 field, u8 val)
{
 int status;
 u8 shift, mask, old, new;

 status = read_reg(state, field >> 16, &old);
 if (status)
  return status;
 mask = field & 0xff;
 shift = (field >> 12) & 0xf;
 new = ((val << shift) & mask) | (old & ~mask);
 if (new == old)
  return 0;
 return write_reg(state, field >> 16, new);
}
