
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct stv0367ter_state {int unlock_counter; scalar_t__ first_lock; scalar_t__ pBER; } ;
struct TYPE_16__ {int len; TYPE_7__* stat; } ;
struct TYPE_14__ {int len; TYPE_5__* stat; } ;
struct TYPE_12__ {int len; TYPE_3__* stat; } ;
struct dtv_frontend_properties {TYPE_8__ block_error; TYPE_6__ cnr; TYPE_4__ strength; } ;
struct TYPE_9__ {struct dtv_frontend_properties dtv_property_cache; } ;
struct stv0367_state {size_t deftabs; TYPE_2__* config; TYPE_1__ fe; struct stv0367ter_state* ter_state; } ;
struct TYPE_15__ {void* scale; } ;
struct TYPE_13__ {void* scale; } ;
struct TYPE_11__ {void* scale; } ;
struct TYPE_10__ {int xtal; } ;


 void* FE_SCALE_NOT_AVAILABLE ;
 int R367CAB_EQU_FFE_LEAKAGE ;
 int R367CAB_FSM_SNR2_HTH ;
 int R367CAB_IQDEM_ADJ_EN ;
 int R367CAB_IQ_QAM ;
 int R367CAB_OUTFORMAT_0 ;
 int R367TER_AGC12C ;
 int R367TER_AGCCTRL1 ;
 int R367TER_ANACTRL ;
 int R367TER_ANADIGCTRL ;
 int R367TER_DUAL_AD12 ;
 int R367TER_FEPATH_CFG ;
 int R367TER_GAIN_SRC1 ;
 int R367TER_GAIN_SRC2 ;
 int R367TER_I2CRPT ;
 int R367TER_INC_DEROT1 ;
 int R367TER_INC_DEROT2 ;
 int R367TER_TOPCTRL ;
 int R367TER_TRL_CTL ;
 int R367TER_TRL_NOMRATE1 ;
 int R367TER_TRL_NOMRATE2 ;
 int R367TER_TSCFGH ;
 int R367TER_TSCFGL ;
 int R367TER_TSCFGM ;
 int R367TER_TSSPEED ;
 int STV0367_ICSPEED_58000 ;
 size_t STV0367_TAB_BASE ;
 size_t STV0367_TAB_CAB ;
 size_t STV0367_TAB_TER ;
 scalar_t__** stv0367_deftabs ;
 int stv0367_pll_setup (struct stv0367_state*,int ,int ) ;
 int stv0367_write_table (struct stv0367_state*,scalar_t__) ;
 int stv0367_writereg (struct stv0367_state*,int ,int) ;

__attribute__((used)) static int stv0367ddb_init(struct stv0367_state *state)
{
 struct stv0367ter_state *ter_state = state->ter_state;
 struct dtv_frontend_properties *p = &state->fe.dtv_property_cache;

 stv0367_writereg(state, R367TER_TOPCTRL, 0x10);

 if (stv0367_deftabs[state->deftabs][STV0367_TAB_BASE])
  stv0367_write_table(state,
   stv0367_deftabs[state->deftabs][STV0367_TAB_BASE]);

 stv0367_write_table(state,
  stv0367_deftabs[state->deftabs][STV0367_TAB_CAB]);

 stv0367_writereg(state, R367TER_TOPCTRL, 0x00);
 stv0367_write_table(state,
  stv0367_deftabs[state->deftabs][STV0367_TAB_TER]);

 stv0367_writereg(state, R367TER_GAIN_SRC1, 0x2A);
 stv0367_writereg(state, R367TER_GAIN_SRC2, 0xD6);
 stv0367_writereg(state, R367TER_INC_DEROT1, 0x55);
 stv0367_writereg(state, R367TER_INC_DEROT2, 0x55);
 stv0367_writereg(state, R367TER_TRL_CTL, 0x14);
 stv0367_writereg(state, R367TER_TRL_NOMRATE1, 0xAE);
 stv0367_writereg(state, R367TER_TRL_NOMRATE2, 0x56);
 stv0367_writereg(state, R367TER_FEPATH_CFG, 0x0);



 stv0367_writereg(state, R367TER_TSCFGH, 0x70);
 stv0367_writereg(state, R367TER_TSCFGM, 0xC0);
 stv0367_writereg(state, R367TER_TSCFGL, 0x20);
 stv0367_writereg(state, R367TER_TSSPEED, 0x40);

 stv0367_writereg(state, R367TER_TSCFGH, 0x71);
 stv0367_writereg(state, R367TER_TSCFGH, 0x70);

 stv0367_writereg(state, R367TER_TOPCTRL, 0x10);


 stv0367_writereg(state, R367TER_AGC12C, 0x01);

 stv0367_writereg(state, R367TER_AGCCTRL1, 0x8A);




 stv0367_writereg(state, R367CAB_OUTFORMAT_0, 0x85);


 stv0367_writereg(state, R367TER_ANACTRL, 0x0D);


 stv0367_pll_setup(state, STV0367_ICSPEED_58000, state->config->xtal);



 stv0367_writereg(state, R367TER_ANADIGCTRL, 0x8b);
 stv0367_writereg(state, R367TER_DUAL_AD12, 0x04);


 stv0367_writereg(state, R367CAB_FSM_SNR2_HTH, 0x23);

 stv0367_writereg(state, R367CAB_IQ_QAM, 0x01);

 stv0367_writereg(state, R367CAB_EQU_FFE_LEAKAGE, 0x83);

 stv0367_writereg(state, R367CAB_IQDEM_ADJ_EN, 0x05);


 stv0367_writereg(state, R367TER_ANACTRL, 0x00);

 stv0367_writereg(state, R367TER_I2CRPT, (0x08 | ((5 & 0x07) << 4)));

 ter_state->pBER = 0;
 ter_state->first_lock = 0;
 ter_state->unlock_counter = 2;

 p->strength.len = 1;
 p->strength.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->cnr.len = 1;
 p->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->block_error.len = 1;
 p->block_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;

 return 0;
}
