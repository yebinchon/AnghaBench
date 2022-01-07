
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct stv090x_state {int dummy; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {scalar_t__ read; } ;


 int AGCIQIN0 ;
 int AGCIQIN1 ;
 int AGCIQ_VALUE_FIELD ;
 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ MAKEWORD16 (scalar_t__,scalar_t__) ;
 scalar_t__ STV090x_GETFIELD_Px (int ,int ) ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 TYPE_1__* stv090x_rf_tab ;
 scalar_t__ stv090x_table_lookup (TYPE_1__*,int,scalar_t__) ;

__attribute__((used)) static int stv090x_read_signal_strength(struct dvb_frontend *fe, u16 *strength)
{
 struct stv090x_state *state = fe->demodulator_priv;
 u32 reg;
 s32 agc_0, agc_1, agc;
 s32 str;

 reg = STV090x_READ_DEMOD(state, AGCIQIN1);
 agc_1 = STV090x_GETFIELD_Px(reg, AGCIQ_VALUE_FIELD);
 reg = STV090x_READ_DEMOD(state, AGCIQIN0);
 agc_0 = STV090x_GETFIELD_Px(reg, AGCIQ_VALUE_FIELD);
 agc = MAKEWORD16(agc_1, agc_0);

 str = stv090x_table_lookup(stv090x_rf_tab,
  ARRAY_SIZE(stv090x_rf_tab) - 1, agc);
 if (agc > stv090x_rf_tab[0].read)
  str = 0;
 else if (agc < stv090x_rf_tab[ARRAY_SIZE(stv090x_rf_tab) - 1].read)
  str = -100;
 *strength = (str + 100) * 0xFFFF / 100;

 return 0;
}
