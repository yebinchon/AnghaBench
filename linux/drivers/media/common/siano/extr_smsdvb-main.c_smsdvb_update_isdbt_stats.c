
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {TYPE_12__* stat; } ;
struct TYPE_15__ {TYPE_10__* stat; } ;
struct TYPE_26__ {TYPE_8__* stat; } ;
struct TYPE_24__ {TYPE_6__* stat; } ;
struct TYPE_22__ {TYPE_4__* stat; } ;
struct TYPE_20__ {TYPE_2__* stat; } ;
struct dtv_frontend_properties {int isdbt_partial_reception; int isdbt_layer_enabled; int lna; TYPE_13__ post_bit_count; TYPE_11__ post_bit_error; TYPE_9__ block_count; TYPE_7__ block_error; TYPE_1__* layer; TYPE_5__ strength; TYPE_3__ cnr; int guard_interval; int transmission_mode; int bandwidth_hz; int frequency; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
struct smsdvb_client_t {scalar_t__ last_per; int fe_status; int debug_data; int (* prt_isdb_stats ) (int ,struct sms_isdbt_stats*) ;struct dvb_frontend frontend; } ;
struct sms_isdbt_stats {scalar_t__ statistics_type; int num_of_layers; int SNR; int in_band_pwr; struct sms_isdbt_layer_stats* layer_info; int is_demod_locked; scalar_t__ is_external_lna_on; scalar_t__ partial_reception; int guard_interval; scalar_t__ transmission_mode; int bandwidth; int frequency; int is_rf_locked; } ;
struct sms_isdbt_layer_stats {int number_of_segments; scalar_t__ ber_bit_count; scalar_t__ ber_error_count; scalar_t__ total_ts_packets; scalar_t__ error_ts_packets; int constellation; } ;
typedef int s32 ;
struct TYPE_25__ {scalar_t__ uvalue; void* scale; } ;
struct TYPE_23__ {scalar_t__ uvalue; void* scale; } ;
struct TYPE_21__ {int uvalue; } ;
struct TYPE_19__ {int svalue; int scale; } ;
struct TYPE_18__ {int segment_count; int modulation; } ;
struct TYPE_16__ {scalar_t__ uvalue; void* scale; } ;
struct TYPE_14__ {scalar_t__ uvalue; void* scale; } ;


 void* FE_SCALE_COUNTER ;
 int FE_SCALE_NOT_AVAILABLE ;
 int sms_to_bw (int ) ;
 int sms_to_guard_interval (int ) ;
 int sms_to_mode (scalar_t__) ;
 int sms_to_modulation (int ) ;
 int sms_to_status (int ,int ) ;
 int stub1 (int ,struct sms_isdbt_stats*) ;

__attribute__((used)) static void smsdvb_update_isdbt_stats(struct smsdvb_client_t *client,
          struct sms_isdbt_stats *p)
{
 struct dvb_frontend *fe = &client->frontend;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct sms_isdbt_layer_stats *lr;
 int i, n_layers;

 if (client->prt_isdb_stats)
  client->prt_isdb_stats(client->debug_data, p);

 client->fe_status = sms_to_status(p->is_demod_locked, p->is_rf_locked);






 if (p->statistics_type == 0) {
  c->strength.stat[0].uvalue = ((s32)p->transmission_mode) * 1000;
  c->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  return;
 }


 c->frequency = p->frequency;
 c->bandwidth_hz = sms_to_bw(p->bandwidth);
 c->transmission_mode = sms_to_mode(p->transmission_mode);
 c->guard_interval = sms_to_guard_interval(p->guard_interval);
 c->isdbt_partial_reception = p->partial_reception ? 1 : 0;
 n_layers = p->num_of_layers;
 if (n_layers < 1)
  n_layers = 1;
 if (n_layers > 3)
  n_layers = 3;
 c->isdbt_layer_enabled = 0;


 c->lna = p->is_external_lna_on ? 1 : 0;


 c->cnr.stat[0].svalue = p->SNR * 1000;


 c->strength.stat[0].uvalue = p->in_band_pwr * 1000;


 if (!p->is_demod_locked)
  return;

 client->last_per = c->block_error.stat[0].uvalue;


 c->block_error.stat[0].uvalue = 0;
 c->block_count.stat[0].uvalue = 0;
 c->block_error.stat[0].scale = FE_SCALE_COUNTER;
 c->block_count.stat[0].scale = FE_SCALE_COUNTER;
 c->post_bit_error.stat[0].uvalue = 0;
 c->post_bit_count.stat[0].uvalue = 0;
 c->post_bit_error.stat[0].scale = FE_SCALE_COUNTER;
 c->post_bit_count.stat[0].scale = FE_SCALE_COUNTER;

 for (i = 0; i < n_layers; i++) {
  lr = &p->layer_info[i];


  if (lr->number_of_segments > 0 && lr->number_of_segments < 13) {
   c->isdbt_layer_enabled |= 1 << i;
   c->layer[i].segment_count = lr->number_of_segments;
  } else {
   continue;
  }
  c->layer[i].modulation = sms_to_modulation(lr->constellation);


  c->block_error.stat[i + 1].scale = FE_SCALE_COUNTER;
  c->block_count.stat[i + 1].scale = FE_SCALE_COUNTER;
  c->block_error.stat[i + 1].uvalue += lr->error_ts_packets;
  c->block_count.stat[i + 1].uvalue += lr->total_ts_packets;


  c->block_error.stat[0].uvalue += lr->error_ts_packets;
  c->block_count.stat[0].uvalue += lr->total_ts_packets;


  c->post_bit_error.stat[i + 1].scale = FE_SCALE_COUNTER;
  c->post_bit_count.stat[i + 1].scale = FE_SCALE_COUNTER;
  c->post_bit_error.stat[i + 1].uvalue += lr->ber_error_count;
  c->post_bit_count.stat[i + 1].uvalue += lr->ber_bit_count;


  c->post_bit_error.stat[0].uvalue += lr->ber_error_count;
  c->post_bit_count.stat[0].uvalue += lr->ber_bit_count;
 }
}
