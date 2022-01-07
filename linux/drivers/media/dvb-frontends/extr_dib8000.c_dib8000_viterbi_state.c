
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct dib8000_state {int dummy; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;

__attribute__((used)) static void dib8000_viterbi_state(struct dib8000_state *state, u8 onoff)
{
 u16 tmp;

 tmp = dib8000_read_word(state, 771);
 if (onoff)
  dib8000_write_word(state, 771, tmp & 0xfffd);
 else
  dib8000_write_word(state, 771, tmp | (1<<1));
}
