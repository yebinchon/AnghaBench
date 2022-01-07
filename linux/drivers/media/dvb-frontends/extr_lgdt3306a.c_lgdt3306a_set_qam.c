
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt3306a_state {int dummy; } ;


 int QAM_64 ;
 int QAM_AUTO ;
 int dbg_info (char*,...) ;
 scalar_t__ forced_manual ;
 scalar_t__ lg_chkerr (int) ;
 int lgdt3306a_read_reg (struct lgdt3306a_state*,int,int*) ;
 int lgdt3306a_soft_reset (struct lgdt3306a_state*) ;
 int lgdt3306a_write_reg (struct lgdt3306a_state*,int,int) ;

__attribute__((used)) static int lgdt3306a_set_qam(struct lgdt3306a_state *state, int modulation)
{
 u8 val;
 int ret;

 dbg_info("modulation=%d\n", modulation);


 ret = lgdt3306a_write_reg(state, 0x0008, 0x08);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_read_reg(state, 0x0002, &val);
 val &= 0xfb;
 val |= 0x08;
 ret = lgdt3306a_write_reg(state, 0x0002, val);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_read_reg(state, 0x0009, &val);
 val &= 0xe3;
 ret = lgdt3306a_write_reg(state, 0x0009, val);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_read_reg(state, 0x0009, &val);
 val &= 0xfc;

 if(forced_manual && (modulation != QAM_AUTO)){
  val |= 0x01;
 } else {
  val |= 0x02;
 }
 ret = lgdt3306a_write_reg(state, 0x0009, val);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_read_reg(state, 0x101a, &val);
 val &= 0xf8;
 if (modulation == QAM_64)
  val |= 0x02;
 else
  val |= 0x04;

 ret = lgdt3306a_write_reg(state, 0x101a, val);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_read_reg(state, 0x000d, &val);
 val &= 0xbf;
 val |= 0x40;
 ret = lgdt3306a_write_reg(state, 0x000d, val);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_read_reg(state, 0x0024, &val);
 val &= 0x00;
 ret = lgdt3306a_write_reg(state, 0x0024, val);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_read_reg(state, 0x000a, &val);
 val &= 0xfd;
 val |= 0x02;
 ret = lgdt3306a_write_reg(state, 0x000a, val);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_read_reg(state, 0x2849, &val);
 val &= 0xdf;
 ret = lgdt3306a_write_reg(state, 0x2849, val);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_read_reg(state, 0x302b, &val);
 val &= 0x7f;
 ret = lgdt3306a_write_reg(state, 0x302b, val);
 if (lg_chkerr(ret))
  goto fail;


 ret = lgdt3306a_soft_reset(state);
 if (lg_chkerr(ret))
  goto fail;

 dbg_info("complete\n");
fail:
 return ret;
}
