
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dtv_frontend_properties {int transmission_mode; int guard_interval; } ;
struct TYPE_3__ {int diversity_delay; } ;
struct dib8000_state {TYPE_1__ cfg; TYPE_2__** fe; } ;
struct TYPE_4__ {struct dtv_frontend_properties dtv_property_cache; } ;





 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;

__attribute__((used)) static void dib8000_set_sync_wait(struct dib8000_state *state)
{
 struct dtv_frontend_properties *c = &state->fe[0]->dtv_property_cache;
 u16 sync_wait = 64;


 switch (c->transmission_mode) {
 case 128:
   sync_wait = 256;
   break;
 case 129:
   sync_wait = 128;
   break;
 default:
 case 130:
   sync_wait = 64;
   break;
 }

 if (state->cfg.diversity_delay == 0)
  sync_wait = (sync_wait * (1 << (c->guard_interval)) * 3) / 2 + 48;
 else
  sync_wait = (sync_wait * (1 << (c->guard_interval)) * 3) / 2 + state->cfg.diversity_delay;

 dib8000_write_word(state, 273, (dib8000_read_word(state, 273) & 0x000f) | (sync_wait << 4));
}
