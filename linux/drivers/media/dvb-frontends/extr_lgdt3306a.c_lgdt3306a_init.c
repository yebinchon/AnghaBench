
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lgdt3306a_state {TYPE_1__* cfg; } ;
struct dvb_frontend {struct lgdt3306a_state* demodulator_priv; } ;
struct TYPE_2__ {int xtalMHz; int mpeg_mode; } ;


 int dbg_info (char*) ;
 scalar_t__ lg_chkerr (int) ;
 int lgdt3306a_mpeg_mode (struct lgdt3306a_state*,int ) ;
 int lgdt3306a_mpeg_tristate (struct lgdt3306a_state*,int) ;
 int lgdt3306a_read_reg (struct lgdt3306a_state*,int,int*) ;
 int lgdt3306a_set_inversion (struct lgdt3306a_state*,int) ;
 int lgdt3306a_set_inversion_auto (struct lgdt3306a_state*,int ) ;
 int lgdt3306a_set_reg_bit (struct lgdt3306a_state*,int,int,int) ;
 int lgdt3306a_set_vsb (struct lgdt3306a_state*) ;
 int lgdt3306a_sleep (struct lgdt3306a_state*) ;
 int lgdt3306a_write_reg (struct lgdt3306a_state*,int,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int lgdt3306a_init(struct dvb_frontend *fe)
{
 struct lgdt3306a_state *state = fe->demodulator_priv;
 u8 val;
 int ret;

 dbg_info("\n");


 ret = lgdt3306a_set_reg_bit(state, 0x0001, 0, 1);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_set_inversion_auto(state, 0);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_set_inversion(state, 1);
 if (lg_chkerr(ret))
  goto fail;




 ret = lgdt3306a_set_reg_bit(state, 0x0004, 7, 1);
 if (lg_chkerr(ret))
  goto fail;




 ret = lgdt3306a_set_reg_bit(state, 0x0004, 2, 0);
 if (lg_chkerr(ret))
  goto fail;




 ret = lgdt3306a_set_reg_bit(state, 0x0004, 3, 0);
 if (lg_chkerr(ret))
  goto fail;




 ret = lgdt3306a_set_reg_bit(state, 0x0005, 6, 0);
 if (lg_chkerr(ret))
  goto fail;

 if (state->cfg->xtalMHz == 24) {

  ret = lgdt3306a_read_reg(state, 0x0005, &val);
  if (lg_chkerr(ret))
   goto fail;
  val &= 0xc0;
  val |= 0x25;
  ret = lgdt3306a_write_reg(state, 0x0005, val);
  if (lg_chkerr(ret))
   goto fail;
  ret = lgdt3306a_write_reg(state, 0x0006, 0x64);
  if (lg_chkerr(ret))
   goto fail;


  ret = lgdt3306a_read_reg(state, 0x000d, &val);
  if (lg_chkerr(ret))
   goto fail;
  val &= 0xc0;
  val |= 0x18;
  ret = lgdt3306a_write_reg(state, 0x000d, val);
  if (lg_chkerr(ret))
   goto fail;

 } else if (state->cfg->xtalMHz == 25) {

  ret = lgdt3306a_read_reg(state, 0x0005, &val);
  if (lg_chkerr(ret))
   goto fail;
  val &= 0xc0;
  val |= 0x25;
  ret = lgdt3306a_write_reg(state, 0x0005, val);
  if (lg_chkerr(ret))
   goto fail;
  ret = lgdt3306a_write_reg(state, 0x0006, 0x64);
  if (lg_chkerr(ret))
   goto fail;


  ret = lgdt3306a_read_reg(state, 0x000d, &val);
  if (lg_chkerr(ret))
   goto fail;
  val &= 0xc0;
  val |= 0x19;
  ret = lgdt3306a_write_reg(state, 0x000d, val);
  if (lg_chkerr(ret))
   goto fail;
 } else {
  pr_err("Bad xtalMHz=%d\n", state->cfg->xtalMHz);
 }






 ret = lgdt3306a_write_reg(state, 0x0010, 0x34);
 ret = lgdt3306a_write_reg(state, 0x0011, 0x00);


 ret = lgdt3306a_write_reg(state, 0x0014, 0);


 ret = lgdt3306a_read_reg(state, 0x103c, &val);
 val &= 0x0f;
 val |= 0x20;
 ret = lgdt3306a_write_reg(state, 0x103c, val);


 ret = lgdt3306a_read_reg(state, 0x103d, &val);
 val &= 0xfc;
 val |= 0x03;
 ret = lgdt3306a_write_reg(state, 0x103d, val);


 ret = lgdt3306a_read_reg(state, 0x1036, &val);
 val &= 0xf0;
 val |= 0x0c;
 ret = lgdt3306a_write_reg(state, 0x1036, val);


 ret = lgdt3306a_read_reg(state, 0x211f, &val);
 val &= 0xef;
 ret = lgdt3306a_write_reg(state, 0x211f, val);


 ret = lgdt3306a_read_reg(state, 0x2849, &val);
 val &= 0xef;
 ret = lgdt3306a_write_reg(state, 0x2849, val);


 ret = lgdt3306a_set_vsb(state);


 ret = lgdt3306a_mpeg_mode(state, state->cfg->mpeg_mode);


 ret = lgdt3306a_mpeg_tristate(state, 1);


 ret = lgdt3306a_sleep(state);
 lg_chkerr(ret);

fail:
 return ret;
}
