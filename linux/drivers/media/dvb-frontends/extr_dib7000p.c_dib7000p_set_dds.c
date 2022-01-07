
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* bw; } ;
struct dib7000p_state {TYPE_2__ cfg; } ;
typedef scalar_t__ s32 ;
struct TYPE_3__ {int ifreq; } ;


 int abs (scalar_t__) ;
 int dib7000p_get_internal_freq (struct dib7000p_state*) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int ) ;
 int dprintk (char*,scalar_t__,int,int) ;
 int pr_warn (char*) ;

__attribute__((used)) static int dib7000p_set_dds(struct dib7000p_state *state, s32 offset_khz)
{
 u32 internal = dib7000p_get_internal_freq(state);
 s32 unit_khz_dds_val;
 u32 abs_offset_khz = abs(offset_khz);
 u32 dds = state->cfg.bw->ifreq & 0x1ffffff;
 u8 invert = !!(state->cfg.bw->ifreq & (1 << 25));
 if (internal == 0) {
  pr_warn("DIB7000P: dib7000p_get_internal_freq returned 0\n");
  return -1;
 }

 unit_khz_dds_val = 67108864 / (internal);

 dprintk("setting a frequency offset of %dkHz internal freq = %d invert = %d\n", offset_khz, internal, invert);

 if (offset_khz < 0)
  unit_khz_dds_val *= -1;


 if (invert)
  dds -= (abs_offset_khz * unit_khz_dds_val);
 else
  dds += (abs_offset_khz * unit_khz_dds_val);

 if (abs_offset_khz <= (internal / 2)) {
  dib7000p_write_word(state, 21, (u16) (((dds >> 16) & 0x1ff) | (0 << 10) | (invert << 9)));
  dib7000p_write_word(state, 22, (u16) (dds & 0xffff));
 }
 return 0;
}
