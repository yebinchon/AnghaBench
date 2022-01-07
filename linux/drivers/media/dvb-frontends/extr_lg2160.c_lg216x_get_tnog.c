
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lg216x_state {int dummy; } ;


 int lg216x_read_reg (struct lg216x_state*,int,int*) ;
 scalar_t__ lg_fail (int) ;

__attribute__((used)) static int lg216x_get_tnog(struct lg216x_state *state, u8 *tnog)
{
 u8 val;
 int ret;

 *tnog = 0xff;

 ret = lg216x_read_reg(state, 0x0125, &val);
 if (lg_fail(ret))
  goto fail;

 *tnog = val & 0x1f;
fail:
 return ret;
}
