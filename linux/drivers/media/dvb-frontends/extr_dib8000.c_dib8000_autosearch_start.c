
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dtv_frontend_properties {scalar_t__ transmission_mode; scalar_t__ guard_interval; scalar_t__ isdbt_sb_mode; TYPE_1__* layer; scalar_t__ inversion; } ;
struct TYPE_8__ {TYPE_3__* pll; } ;
struct dib8000_state {int revision; scalar_t__ autosearch_state; scalar_t__ found_nfft; TYPE_4__ cfg; TYPE_2__** fe; } ;
struct TYPE_7__ {int internal; } ;
struct TYPE_6__ {struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_5__ {int segment_count; scalar_t__ interleaving; void* fec; void* modulation; } ;


 scalar_t__ AS_SEARCHING_FFT ;
 scalar_t__ AS_SEARCHING_GUARD ;
 void* FEC_2_3 ;
 void* GUARD_INTERVAL_1_8 ;
 scalar_t__ GUARD_INTERVAL_AUTO ;
 void* QAM_64 ;
 void* TRANSMISSION_MODE_8K ;
 scalar_t__ TRANSMISSION_MODE_AUTO ;
 int dib8000_read32 (struct dib8000_state*,int) ;
 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_set_isdbt_common_channel (struct dib8000_state*,int,int) ;
 int dib8000_wait_lock (struct dib8000_state*,int,int,int,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dprintk (char*,int) ;

__attribute__((used)) static int dib8000_autosearch_start(struct dvb_frontend *fe)
{
 struct dib8000_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *c = &state->fe[0]->dtv_property_cache;
 u8 slist = 0;
 u32 value, internal = state->cfg.pll->internal;

 if (state->revision == 0x8090)
  internal = dib8000_read32(state, 23) / 1000;

 if ((state->revision >= 0x8002) &&
     (state->autosearch_state == AS_SEARCHING_FFT)) {
  dib8000_write_word(state, 37, 0x0065);
  dib8000_write_word(state, 116, 0x0000);

  dib8000_write_word(state, 0, (dib8000_read_word(state, 0) & 0x1fff) | (0 << 13) | (1 << 15));
  dib8000_write_word(state, 1, (dib8000_read_word(state, 1) & 0xfffc) | 0);
  dib8000_write_word(state, 6, 0);
  dib8000_write_word(state, 7, 0);
  dib8000_write_word(state, 8, 0);
  dib8000_write_word(state, 10, (dib8000_read_word(state, 10) & 0x200) | (16 << 4) | (0 << 0));

  if (state->revision == 0x8090)
   value = dib8000_wait_lock(state, internal, 10, 10, 10);
  else
   value = dib8000_wait_lock(state, internal, 20, 20, 20);

  dib8000_write_word(state, 17, 0);
  dib8000_write_word(state, 18, 200);
  dib8000_write_word(state, 19, 0);
  dib8000_write_word(state, 20, 400);
  dib8000_write_word(state, 21, (value >> 16) & 0xffff);
  dib8000_write_word(state, 22, value & 0xffff);

  if (state->revision == 0x8090)
   dib8000_write_word(state, 32, (dib8000_read_word(state, 32) & 0xf0ff) | (0 << 8));
  else
   dib8000_write_word(state, 32, (dib8000_read_word(state, 32) & 0xf0ff) | (9 << 8));
  dib8000_write_word(state, 355, 2);


  dib8000_write_word(state, 356, 0);
  dib8000_write_word(state, 357, 0x111);

  dib8000_write_word(state, 770, (dib8000_read_word(state, 770) & 0xdfff) | (1 << 13));
  dib8000_write_word(state, 770, (dib8000_read_word(state, 770) & 0xdfff) | (0 << 13));
  dib8000_write_word(state, 0, (dib8000_read_word(state, 0) & 0x7ff) | (0 << 15) | (1 << 13));
 } else if ((state->revision >= 0x8002) &&
     (state->autosearch_state == AS_SEARCHING_GUARD)) {
  c->transmission_mode = TRANSMISSION_MODE_8K;
  c->guard_interval = GUARD_INTERVAL_1_8;
  c->inversion = 0;
  c->layer[0].modulation = QAM_64;
  c->layer[0].fec = FEC_2_3;
  c->layer[0].interleaving = 0;
  c->layer[0].segment_count = 13;

  slist = 16;
  c->transmission_mode = state->found_nfft;

  dib8000_set_isdbt_common_channel(state, slist, 1);


  dib8000_write_word(state, 6, 0x4);
  if (state->revision == 0x8090)
   dib8000_write_word(state, 7, ((1 << 12) | (1 << 11) | (1 << 10)));
  else
   dib8000_write_word(state, 7, 0x8);
  dib8000_write_word(state, 8, 0x1000);


  if (state->revision == 0x8090)
   dib8000_wait_lock(state, internal, 50, 100, 1000);
  else
   dib8000_wait_lock(state, internal, 50, 200, 1000);

  dib8000_write_word(state, 355, 3);


  dib8000_write_word(state, 356, 0);
  dib8000_write_word(state, 357, 0xf);

  value = dib8000_read_word(state, 0);
  dib8000_write_word(state, 0, (u16)((1 << 15) | value));
  dib8000_read_word(state, 1284);
  dib8000_write_word(state, 0, (u16)value);
 } else {
  c->inversion = 0;
  c->layer[0].modulation = QAM_64;
  c->layer[0].fec = FEC_2_3;
  c->layer[0].interleaving = 0;
  c->layer[0].segment_count = 13;
  if (!c->isdbt_sb_mode)
   c->layer[0].segment_count = 13;


  if (c->isdbt_sb_mode) {
   slist = 7;
   dib8000_write_word(state, 0, (dib8000_read_word(state, 0) & 0x9fff) | (1 << 13));
  } else {
   if (c->guard_interval == GUARD_INTERVAL_AUTO) {
    if (c->transmission_mode == TRANSMISSION_MODE_AUTO) {
     c->transmission_mode = TRANSMISSION_MODE_8K;
     c->guard_interval = GUARD_INTERVAL_1_8;
     slist = 7;
     dib8000_write_word(state, 0, (dib8000_read_word(state, 0) & 0x9fff) | (1 << 13));
    } else {
     c->guard_interval = GUARD_INTERVAL_1_8;
     slist = 3;
    }
   } else {
    if (c->transmission_mode == TRANSMISSION_MODE_AUTO) {
     c->transmission_mode = TRANSMISSION_MODE_8K;
     slist = 2;
     dib8000_write_word(state, 0, (dib8000_read_word(state, 0) & 0x9fff) | (1 << 13));
    } else
     slist = 0;
   }
  }
  dprintk("Using list for autosearch : %d\n", slist);

  dib8000_set_isdbt_common_channel(state, slist, 1);


  dib8000_write_word(state, 6, 0x4);
  if (state->revision == 0x8090)
   dib8000_write_word(state, 7, (1 << 12) | (1 << 11) | (1 << 10));
  else
   dib8000_write_word(state, 7, 0x8);
  dib8000_write_word(state, 8, 0x1000);


  if (state->revision == 0x8090)
   dib8000_wait_lock(state, internal, 50, 200, 1000);
  else
   dib8000_wait_lock(state, internal, 50, 100, 1000);

  value = dib8000_read_word(state, 0);
  dib8000_write_word(state, 0, (u16)((1 << 15) | value));
  dib8000_read_word(state, 1284);
  dib8000_write_word(state, 0, (u16)value);
 }
 return 0;
}
