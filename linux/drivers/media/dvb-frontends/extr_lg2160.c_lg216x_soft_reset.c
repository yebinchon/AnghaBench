
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg216x_state {int last_reset; } ;


 int jiffies ;
 int jiffies_to_msecs (int ) ;
 int lg216x_write_reg (struct lg216x_state*,int,int) ;
 int lg_dbg (char*) ;
 scalar_t__ lg_fail (int) ;
 int msleep (int) ;

__attribute__((used)) static int lg216x_soft_reset(struct lg216x_state *state)
{
 int ret;

 lg_dbg("\n");

 ret = lg216x_write_reg(state, 0x0002, 0x00);
 if (lg_fail(ret))
  goto fail;

 msleep(20);
 ret = lg216x_write_reg(state, 0x0002, 0x01);
 if (lg_fail(ret))
  goto fail;

 state->last_reset = jiffies_to_msecs(jiffies);
fail:
 return ret;
}
