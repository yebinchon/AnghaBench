
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dib0090_state {int const* bb_ramp; } ;


 int dib0090_read_reg (struct dib0090_state*,int) ;
 int dib0090_set_boost (struct dib0090_state*,int) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;
 int dib0090_write_regs (struct dib0090_state*,int,int const*,int) ;
 int dprintk (char*,int ,int ) ;

__attribute__((used)) static void dib0090_set_bbramp_pwm(struct dib0090_state *state, const u16 * cfg)
{
 state->bb_ramp = cfg;

 dib0090_set_boost(state, cfg[0] > 500);

 dib0090_write_reg(state, 0x33, 0xffff);
 dprintk("total BB gain: %ddB, step: %d\n", (u32) cfg[0], dib0090_read_reg(state, 0x33));
 dib0090_write_regs(state, 0x35, cfg + 3, 4);
}
