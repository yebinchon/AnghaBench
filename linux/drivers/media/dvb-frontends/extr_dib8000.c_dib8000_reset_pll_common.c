
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dibx000_bandwidth_config {int ifreq; int internal; int sad_cfg; } ;
struct dib8000_state {int revision; } ;


 int dib8000_write_word (struct dib8000_state*,int,int ) ;
 int dprintk (char*,int,int,int) ;

__attribute__((used)) static void dib8000_reset_pll_common(struct dib8000_state *state, const struct dibx000_bandwidth_config *bw)
{
 dprintk("ifreq: %d %x, inversion: %d\n", bw->ifreq, bw->ifreq, bw->ifreq >> 25);
 if (state->revision != 0x8090) {
  dib8000_write_word(state, 23,
    (u16) (((bw->internal * 1000) >> 16) & 0xffff));
  dib8000_write_word(state, 24,
    (u16) ((bw->internal * 1000) & 0xffff));
 } else {
  dib8000_write_word(state, 23, (u16) (((bw->internal / 2 * 1000) >> 16) & 0xffff));
  dib8000_write_word(state, 24,
    (u16) ((bw->internal / 2 * 1000) & 0xffff));
 }
 dib8000_write_word(state, 27, (u16) ((bw->ifreq >> 16) & 0x01ff));
 dib8000_write_word(state, 28, (u16) (bw->ifreq & 0xffff));
 dib8000_write_word(state, 26, (u16) ((bw->ifreq >> 25) & 0x0003));

 if (state->revision != 0x8090)
  dib8000_write_word(state, 922, bw->sad_cfg);
}
