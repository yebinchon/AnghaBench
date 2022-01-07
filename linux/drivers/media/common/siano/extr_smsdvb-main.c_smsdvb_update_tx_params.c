
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtv_frontend_properties {int modulation; int hierarchy; void* code_rate_LP; void* code_rate_HP; int guard_interval; int transmission_mode; int bandwidth_hz; int frequency; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
struct smsdvb_client_t {int fe_status; struct dvb_frontend frontend; } ;
struct sms_tx_stats {int constellation; int hierarchy; int lp_code_rate; int code_rate; int guard_interval; int transmission_mode; int bandwidth; int is_demod_locked; int frequency; } ;


 int sms_to_bw (int ) ;
 void* sms_to_code_rate (int ) ;
 int sms_to_guard_interval (int ) ;
 int sms_to_hierarchy (int ) ;
 int sms_to_mode (int ) ;
 int sms_to_modulation (int ) ;
 int sms_to_status (int ,int ) ;

__attribute__((used)) static void smsdvb_update_tx_params(struct smsdvb_client_t *client,
        struct sms_tx_stats *p)
{
 struct dvb_frontend *fe = &client->frontend;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 c->frequency = p->frequency;
 client->fe_status = sms_to_status(p->is_demod_locked, 0);
 c->bandwidth_hz = sms_to_bw(p->bandwidth);
 c->transmission_mode = sms_to_mode(p->transmission_mode);
 c->guard_interval = sms_to_guard_interval(p->guard_interval);
 c->code_rate_HP = sms_to_code_rate(p->code_rate);
 c->code_rate_LP = sms_to_code_rate(p->lp_code_rate);
 c->hierarchy = sms_to_hierarchy(p->hierarchy);
 c->modulation = sms_to_modulation(p->constellation);
}
