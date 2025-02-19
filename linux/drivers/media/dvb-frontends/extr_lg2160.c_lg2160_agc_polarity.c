
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lg216x_state {int dummy; } ;


 int lg216x_read_reg (struct lg216x_state*,int,int*) ;
 int lg216x_write_reg (struct lg216x_state*,int,int) ;
 scalar_t__ lg_fail (int) ;

__attribute__((used)) static int lg2160_agc_polarity(struct lg216x_state *state,
          int if_agc_polarity, int rf_agc_polarity)
{
 u8 val;
 int ret;

 ret = lg216x_read_reg(state, 0x0100, &val);
 if (lg_fail(ret))
  goto fail;

 val &= 0xfc;
 val |= (if_agc_polarity) ? 0x02 : 0x00;
 val |= (rf_agc_polarity) ? 0x01 : 0x00;

 ret = lg216x_write_reg(state, 0x0100, val);
 lg_fail(ret);
fail:
 return ret;
}
