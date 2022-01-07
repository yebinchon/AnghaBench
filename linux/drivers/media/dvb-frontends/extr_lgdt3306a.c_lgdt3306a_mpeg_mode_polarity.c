
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt3306a_state {int dummy; } ;
typedef enum lgdt3306a_tp_valid_polarity { ____Placeholder_lgdt3306a_tp_valid_polarity } lgdt3306a_tp_valid_polarity ;
typedef enum lgdt3306a_tp_clock_edge { ____Placeholder_lgdt3306a_tp_clock_edge } lgdt3306a_tp_clock_edge ;


 int LGDT3306A_TPCLK_RISING_EDGE ;
 int LGDT3306A_TP_VALID_HIGH ;
 int dbg_info (char*,int,int) ;
 scalar_t__ lg_chkerr (int) ;
 int lgdt3306a_read_reg (struct lgdt3306a_state*,int,int*) ;
 int lgdt3306a_write_reg (struct lgdt3306a_state*,int,int) ;

__attribute__((used)) static int lgdt3306a_mpeg_mode_polarity(struct lgdt3306a_state *state,
           enum lgdt3306a_tp_clock_edge edge,
           enum lgdt3306a_tp_valid_polarity valid)
{
 u8 val;
 int ret;

 dbg_info("edge=%d, valid=%d\n", edge, valid);

 ret = lgdt3306a_read_reg(state, 0x0070, &val);
 if (lg_chkerr(ret))
  goto fail;

 val &= ~0x06;

 if (edge == LGDT3306A_TPCLK_RISING_EDGE)
  val |= 0x04;
 if (valid == LGDT3306A_TP_VALID_HIGH)
  val |= 0x02;

 ret = lgdt3306a_write_reg(state, 0x0070, val);
 lg_chkerr(ret);

fail:
 return ret;
}
