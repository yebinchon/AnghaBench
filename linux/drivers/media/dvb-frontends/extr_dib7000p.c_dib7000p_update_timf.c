
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* bw; } ;
struct dib7000p_state {int timf; int current_bandwidth; TYPE_2__ cfg; } ;
struct TYPE_3__ {int timf; } ;


 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int ) ;
 int dprintk (char*,int,int ) ;

__attribute__((used)) static void dib7000p_update_timf(struct dib7000p_state *state)
{
 u32 timf = (dib7000p_read_word(state, 427) << 16) | dib7000p_read_word(state, 428);
 state->timf = timf * 160 / (state->current_bandwidth / 50);
 dib7000p_write_word(state, 23, (u16) (timf >> 16));
 dib7000p_write_word(state, 24, (u16) (timf & 0xffff));
 dprintk("updated timf_frequency: %d (default: %d)\n", state->timf, state->cfg.bw->timf);

}
