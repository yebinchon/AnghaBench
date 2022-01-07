
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ in_soc; } ;
struct dib0090_state {TYPE_1__ identity; } ;


 int dib0090_read_reg (struct dib0090_state*,int) ;

__attribute__((used)) static u32 dib0090_get_slow_adc_val(struct dib0090_state *state)
{
 u16 adc_val = dib0090_read_reg(state, 0x1d);
 if (state->identity.in_soc)
  adc_val >>= 2;
 return adc_val;
}
