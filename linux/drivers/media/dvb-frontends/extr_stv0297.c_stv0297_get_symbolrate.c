
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct stv0297_state {int dummy; } ;


 int STV0297_CLOCK_KHZ ;
 int stv0297_readreg (struct stv0297_state*,int) ;

__attribute__((used)) static u32 stv0297_get_symbolrate(struct stv0297_state *state)
{
 u64 tmp;

 tmp = (u64)(stv0297_readreg(state, 0x55)
      | (stv0297_readreg(state, 0x56) << 8)
      | (stv0297_readreg(state, 0x57) << 16)
      | (stv0297_readreg(state, 0x58) << 24));

 tmp *= STV0297_CLOCK_KHZ;
 tmp >>= 32;

 return (u32) tmp;
}
