
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {int dummy; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;

__attribute__((used)) static void dib8000_set_subchannel_prbs(struct dib8000_state *state, u16 init_prbs)
{
 u16 reg_1;

 reg_1 = dib8000_read_word(state, 1);
 dib8000_write_word(state, 1, (init_prbs << 2) | (reg_1 & 0x3));
}
