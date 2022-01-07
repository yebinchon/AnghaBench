
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct lgdt3306a_state {int dummy; } ;


 int dbg_info (char*,int,int,int,int) ;
 int lgdt3306a_read_reg (struct lgdt3306a_state*,int,int*) ;
 int lgdt3306a_write_reg (struct lgdt3306a_state*,int,int) ;

__attribute__((used)) static int lgdt3306a_monitor_vsb(struct lgdt3306a_state *state)
{
 u8 val;
 int ret;
 u8 snrRef, maxPowerMan, nCombDet;
 u16 fbDlyCir;

 ret = lgdt3306a_read_reg(state, 0x21a1, &val);
 if (ret)
  return ret;
 snrRef = val & 0x3f;

 ret = lgdt3306a_read_reg(state, 0x2185, &maxPowerMan);
 if (ret)
  return ret;

 ret = lgdt3306a_read_reg(state, 0x2191, &val);
 if (ret)
  return ret;
 nCombDet = (val & 0x80) >> 7;

 ret = lgdt3306a_read_reg(state, 0x2180, &val);
 if (ret)
  return ret;
 fbDlyCir = (val & 0x03) << 8;

 ret = lgdt3306a_read_reg(state, 0x2181, &val);
 if (ret)
  return ret;
 fbDlyCir |= val;

 dbg_info("snrRef=%d maxPowerMan=0x%x nCombDet=%d fbDlyCir=0x%x\n",
  snrRef, maxPowerMan, nCombDet, fbDlyCir);


 ret = lgdt3306a_read_reg(state, 0x1061, &val);
 if (ret)
  return ret;
 val &= 0xf8;
 if ((snrRef > 18) && (maxPowerMan > 0x68)
     && (nCombDet == 0x01)
     && ((fbDlyCir == 0x03FF) || (fbDlyCir < 0x6C))) {

  val |= 0x00;
 } else {
  val |= 0x04;
 }
 ret = lgdt3306a_write_reg(state, 0x1061, val);
 if (ret)
  return ret;


 ret = lgdt3306a_read_reg(state, 0x0024, &val);
 if (ret)
  return ret;
 val &= 0x0f;
 if (nCombDet == 0) {
  val |= 0x50;
 }
 ret = lgdt3306a_write_reg(state, 0x0024, val);
 if (ret)
  return ret;


 ret = lgdt3306a_read_reg(state, 0x103d, &val);
 if (ret)
  return ret;
 val &= 0xcf;
 val |= 0x20;
 ret = lgdt3306a_write_reg(state, 0x103d, val);

 return ret;
}
