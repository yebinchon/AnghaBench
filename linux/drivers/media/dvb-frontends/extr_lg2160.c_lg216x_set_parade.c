
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg216x_state {int parade_id; } ;


 int lg216x_write_reg (struct lg216x_state*,int,int) ;
 scalar_t__ lg_fail (int) ;

__attribute__((used)) static int lg216x_set_parade(struct lg216x_state *state, int id)
{
 int ret;

 ret = lg216x_write_reg(state, 0x013e, id & 0x7f);
 if (lg_fail(ret))
  goto fail;

 state->parade_id = id & 0x7f;
fail:
 return ret;
}
