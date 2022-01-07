
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct dib0090_state {scalar_t__ current_band; scalar_t__ wbd_target; scalar_t__ wbd_offset; TYPE_1__* config; } ;
struct TYPE_2__ {int wbd_vhf_offset; int wbd_cband_offset; } ;


 scalar_t__ BAND_CBAND ;
 scalar_t__ BAND_VHF ;
 scalar_t__ dib0090_wbd_to_db (struct dib0090_state*,scalar_t__) ;
 int dprintk (char*,int ) ;

__attribute__((used)) static void dib0090_wbd_target(struct dib0090_state *state, u32 rf)
{
 u16 offset = 250;



 if (state->current_band == BAND_VHF)
  offset = 650;

 if (state->current_band == BAND_VHF)
  offset = state->config->wbd_vhf_offset;
 if (state->current_band == BAND_CBAND)
  offset = state->config->wbd_cband_offset;


 state->wbd_target = dib0090_wbd_to_db(state, state->wbd_offset + offset);
 dprintk("wbd-target: %d dB\n", (u32) state->wbd_target);
}
