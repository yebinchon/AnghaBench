
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dib0070_state {int* wbd_offset_3_3; } ;


 int dib0070_read_wbd_offset (struct dib0070_state*,int) ;
 int dprintk (char*,int,int) ;

__attribute__((used)) static void dib0070_wbd_offset_calibration(struct dib0070_state *state)
{
 u8 gain;
 for (gain = 6; gain < 8; gain++) {
  state->wbd_offset_3_3[gain - 6] = ((dib0070_read_wbd_offset(state, gain) * 8 * 18 / 33 + 1) / 2);
  dprintk("Gain: %d, WBDOffset (3.3V) = %hd\n", gain, state->wbd_offset_3_3[gain-6]);
 }
}
