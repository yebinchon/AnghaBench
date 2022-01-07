
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0367_state {int dummy; } ;
struct st_register {int value; int addr; } ;


 int stv0367_writereg (struct stv0367_state*,int ,int ) ;

__attribute__((used)) static void stv0367_write_table(struct stv0367_state *state,
    const struct st_register *deftab)
{
 int i = 0;

 while (1) {
  if (!deftab[i].addr)
   break;
  stv0367_writereg(state, deftab[i].addr, deftab[i].value);
  i++;
 }
}
