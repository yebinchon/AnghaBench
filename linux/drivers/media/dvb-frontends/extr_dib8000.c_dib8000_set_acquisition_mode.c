
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {int dummy; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dprintk (char*) ;

__attribute__((used)) static void dib8000_set_acquisition_mode(struct dib8000_state *state)
{
 u16 nud = dib8000_read_word(state, 298);
 nud |= (1 << 3) | (1 << 0);
 dprintk("acquisition mode activated\n");
 dib8000_write_word(state, 298, nud);
}
