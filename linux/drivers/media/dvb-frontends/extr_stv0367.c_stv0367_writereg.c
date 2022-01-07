
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct stv0367_state {int dummy; } ;


 int stv0367_writeregs (struct stv0367_state*,int ,int *,int) ;

__attribute__((used)) static int stv0367_writereg(struct stv0367_state *state, u16 reg, u8 data)
{
 u8 tmp = data;

 return stv0367_writeregs(state, reg, &tmp, 1);
}
