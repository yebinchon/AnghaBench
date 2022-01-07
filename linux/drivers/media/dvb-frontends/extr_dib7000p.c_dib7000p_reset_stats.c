
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int len; TYPE_3__* stat; } ;
struct TYPE_6__ {int len; TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_4__ post_bit_count; TYPE_4__ post_bit_error; TYPE_2__ block_count; TYPE_4__ block_error; TYPE_4__ cnr; TYPE_4__ strength; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {scalar_t__ per_jiffies_stats; scalar_t__ ber_jiffies_stats; int old_ucb; } ;
struct TYPE_7__ {void* scale; scalar_t__ uvalue; } ;
struct TYPE_5__ {void* scale; } ;


 void* FE_SCALE_DECIBEL ;
 void* FE_SCALE_NOT_AVAILABLE ;
 int dib7000p_read_unc_blocks (struct dvb_frontend*,int *) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static void dib7000p_reset_stats(struct dvb_frontend *demod)
{
 struct dib7000p_state *state = demod->demodulator_priv;
 struct dtv_frontend_properties *c = &demod->dtv_property_cache;
 u32 ucb;

 memset(&c->strength, 0, sizeof(c->strength));
 memset(&c->cnr, 0, sizeof(c->cnr));
 memset(&c->post_bit_error, 0, sizeof(c->post_bit_error));
 memset(&c->post_bit_count, 0, sizeof(c->post_bit_count));
 memset(&c->block_error, 0, sizeof(c->block_error));

 c->strength.len = 1;
 c->cnr.len = 1;
 c->block_error.len = 1;
 c->block_count.len = 1;
 c->post_bit_error.len = 1;
 c->post_bit_count.len = 1;

 c->strength.stat[0].scale = FE_SCALE_DECIBEL;
 c->strength.stat[0].uvalue = 0;

 c->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 c->block_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 c->block_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 c->post_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 c->post_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;

 dib7000p_read_unc_blocks(demod, &ucb);

 state->old_ucb = ucb;
 state->ber_jiffies_stats = 0;
 state->per_jiffies_stats = 0;
}
