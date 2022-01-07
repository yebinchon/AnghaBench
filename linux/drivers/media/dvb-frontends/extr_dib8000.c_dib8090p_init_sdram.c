
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {int dummy; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib8090p_init_sdram(struct dib8000_state *state)
{
 u16 reg = 0;
 dprintk("init sdram\n");

 reg = dib8000_read_word(state, 274) & 0xfff0;
 dib8000_write_word(state, 274, reg | 0x7);

 dib8000_write_word(state, 1803, (7 << 2));

 reg = dib8000_read_word(state, 1280);
 dib8000_write_word(state, 1280, reg | (1 << 2));
 dib8000_write_word(state, 1280, reg);

 return 0;
}
