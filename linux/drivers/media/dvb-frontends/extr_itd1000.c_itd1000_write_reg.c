
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct itd1000_state {size_t* shadow; } ;


 int itd1000_write_regs (struct itd1000_state*,size_t,size_t*,int) ;

__attribute__((used)) static inline int itd1000_write_reg(struct itd1000_state *state, u8 r, u8 v)
{
 u8 tmp = v;
 int ret = itd1000_write_regs(state, r, &tmp, 1);
 state->shadow[r] = tmp;
 return ret;
}
