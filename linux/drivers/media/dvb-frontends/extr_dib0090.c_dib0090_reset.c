
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct TYPE_4__ {int version; scalar_t__ in_soc; scalar_t__ p1g; } ;
struct dib0090_state {int calibrate; TYPE_3__* config; TYPE_1__ identity; } ;
struct TYPE_5__ {int clock_khz; } ;
struct TYPE_6__ {int force_crystal_mode; TYPE_2__ io; } ;


 int DC_CAL ;
 int EIO ;
 int EN_BB ;
 int EN_BIAS ;
 int EN_CRYSTAL ;
 int EN_DIGCLK ;
 int EN_IQADC ;
 int EN_PLL ;
 int P1D_E_F ;
 int TEMP_CAL ;
 int WBD_CAL ;
 int dib0090_defaults ;
 scalar_t__ dib0090_identify (struct dvb_frontend*) ;
 int dib0090_p1g_additionnal_defaults ;
 int dib0090_read_reg (struct dib0090_state*,int) ;
 int dib0090_reset_digital (struct dvb_frontend*,TYPE_3__*) ;
 int dib0090_set_EFUSE (struct dib0090_state*) ;
 int dib0090_set_default_config (struct dib0090_state*,int ) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;
 int dprintk (char*,int) ;

__attribute__((used)) static int dib0090_reset(struct dvb_frontend *fe)
{
 struct dib0090_state *state = fe->tuner_priv;

 dib0090_reset_digital(fe, state->config);
 if (dib0090_identify(fe) < 0)
  return -EIO;






 if (!state->identity.in_soc) {
  if ((dib0090_read_reg(state, 0x1a) >> 5) & 0x2)
   dib0090_write_reg(state, 0x1b, (EN_IQADC | EN_BB | EN_BIAS | EN_DIGCLK | EN_PLL | EN_CRYSTAL));
  else
   dib0090_write_reg(state, 0x1b, (EN_DIGCLK | EN_PLL | EN_CRYSTAL));
 }

 dib0090_set_default_config(state, dib0090_defaults);

 if (state->identity.in_soc)
  dib0090_write_reg(state, 0x18, 0x2910);

 if (state->identity.p1g)
  dib0090_set_default_config(state, dib0090_p1g_additionnal_defaults);


 if (((state->identity.version & 0x1f) >= P1D_E_F) || (state->identity.in_soc))
  dib0090_set_EFUSE(state);


 if (state->config->force_crystal_mode != 0)
  dib0090_write_reg(state, 0x14,
    state->config->force_crystal_mode & 3);
 else if (state->config->io.clock_khz >= 24000)
  dib0090_write_reg(state, 0x14, 1);
 else
  dib0090_write_reg(state, 0x14, 2);
 dprintk("Pll lock : %d\n", (dib0090_read_reg(state, 0x1a) >> 11) & 0x1);

 state->calibrate = DC_CAL | WBD_CAL | TEMP_CAL;

 return 0;
}
