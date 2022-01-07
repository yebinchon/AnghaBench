
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct dib0090_state {scalar_t__ const* rf_ramp; } ;


 int dib0090_read_reg (struct dib0090_state*,int) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;
 int dib0090_write_regs (struct dib0090_state*,int,scalar_t__ const*,int) ;
 int dprintk (char*,int ,int ) ;

__attribute__((used)) static void dib0090_set_rframp_pwm(struct dib0090_state *state, const u16 * cfg)
{
 state->rf_ramp = cfg;

 dib0090_write_reg(state, 0x2a, 0xffff);

 dprintk("total RF gain: %ddB, step: %d\n", (u32) cfg[0], dib0090_read_reg(state, 0x2a));

 dib0090_write_regs(state, 0x2c, cfg + 3, 6);
 dib0090_write_regs(state, 0x3e, cfg + 9, 2);
}
