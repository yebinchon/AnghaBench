
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dib0090_state {int bb7; int bb6; int step; TYPE_1__* dc; } ;
struct TYPE_2__ {int addr; int offset; } ;


 int dib0090_write_reg (struct dib0090_state*,int,int) ;

__attribute__((used)) static void dib0090_set_trim(struct dib0090_state *state)
{
 u16 *val;

 if (state->dc->addr == 0x07)
  val = &state->bb7;
 else
  val = &state->bb6;

 *val &= ~(0x1f << state->dc->offset);
 *val |= state->step << state->dc->offset;

 dib0090_write_reg(state, state->dc->addr, *val);
}
