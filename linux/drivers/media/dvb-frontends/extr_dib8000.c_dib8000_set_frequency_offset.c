
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct dtv_frontend_properties {int frequency; int inversion; int isdbt_sb_subchannel; scalar_t__ isdbt_sb_mode; } ;
struct TYPE_9__ {TYPE_3__* pll; } ;
struct dib8000_state {TYPE_4__ cfg; int subchannel; TYPE_5__** fe; } ;
struct TYPE_6__ {int (* get_frequency ) (TYPE_5__*,int*) ;} ;
struct TYPE_7__ {TYPE_1__ tuner_ops; } ;
struct TYPE_10__ {TYPE_2__ ops; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_8__ {scalar_t__ ifreq; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_set_dds (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dprintk (char*,int,int,int,int) ;
 int stub1 (TYPE_5__*,int*) ;

__attribute__((used)) static void dib8000_set_frequency_offset(struct dib8000_state *state)
{
 struct dtv_frontend_properties *c = &state->fe[0]->dtv_property_cache;
 int i;
 u32 current_rf;
 int total_dds_offset_khz;

 if (state->fe[0]->ops.tuner_ops.get_frequency)
  state->fe[0]->ops.tuner_ops.get_frequency(state->fe[0], &current_rf);
 else
  current_rf = c->frequency;
 current_rf /= 1000;
 total_dds_offset_khz = (int)current_rf - (int)c->frequency / 1000;

 if (c->isdbt_sb_mode) {
  state->subchannel = c->isdbt_sb_subchannel;

  i = dib8000_read_word(state, 26) & 1;
  dib8000_write_word(state, 26, c->inversion ^ i);

  if (state->cfg.pll->ifreq == 0) {
   if ((c->inversion ^ i) == 0)
    dib8000_write_word(state, 26, dib8000_read_word(state, 26) | 1);
  } else {
   if ((c->inversion ^ i) == 0)
    total_dds_offset_khz *= -1;
  }
 }

 dprintk("%dkhz tuner offset (frequency = %dHz & current_rf = %dHz) total_dds_offset_hz = %d\n", c->frequency - current_rf, c->frequency, current_rf, total_dds_offset_khz);


 dib8000_set_dds(state, total_dds_offset_khz);
}
