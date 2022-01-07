
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ block_error; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
struct smsdvb_client_t {int has_tuned; int fe_status; scalar_t__ last_per; int stats_done; int coredev; int tune_done; int demux; int feed_users; struct dvb_frontend frontend; } ;
struct smscore_buffer_t {int offset; int size; scalar_t__ p; } ;
struct sms_msg_hdr {int msg_type; } ;
struct TYPE_3__ {scalar_t__ uvalue; } ;




 int DVB3_EVENT_FE_LOCK ;
 int DVB3_EVENT_FE_UNLOCK ;
 int DVB3_EVENT_UNC_ERR ;
 int DVB3_EVENT_UNC_OK ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int complete (int *) ;
 int dvb_dmx_swfilter (int *,void*,int ) ;
 int pr_debug (char*) ;
 int sms_board_dvb3_event (struct smsdvb_client_t*,int ) ;
 int smscore_get_device_mode (int ) ;
 int smscore_putbuffer (int ,struct smscore_buffer_t*) ;
 int smsdvb_stats_not_ready (struct dvb_frontend*) ;
 int smsdvb_update_dvb_stats (struct smsdvb_client_t*,void*) ;
 int smsdvb_update_isdbt_stats (struct smsdvb_client_t*,void*) ;
 int smsdvb_update_isdbt_stats_ex (struct smsdvb_client_t*,void*) ;
 int smsdvb_update_per_slices (struct smsdvb_client_t*,void*) ;
 int smsdvb_update_tx_params (struct smsdvb_client_t*,void*) ;

__attribute__((used)) static int smsdvb_onresponse(void *context, struct smscore_buffer_t *cb)
{
 struct smsdvb_client_t *client = (struct smsdvb_client_t *) context;
 struct sms_msg_hdr *phdr = (struct sms_msg_hdr *) (((u8 *) cb->p)
   + cb->offset);
 void *p = phdr + 1;
 struct dvb_frontend *fe = &client->frontend;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 bool is_status_update = 0;

 switch (phdr->msg_type) {
 case 136:




  if (client->feed_users && client->has_tuned)
   dvb_dmx_swfilter(&client->demux, p,
      cb->size - sizeof(struct sms_msg_hdr));
  break;

 case 130:
 case 132:
  complete(&client->tune_done);
  break;

 case 129:
  client->fe_status = FE_HAS_SIGNAL | FE_HAS_CARRIER |
        FE_HAS_VITERBI | FE_HAS_SYNC |
        FE_HAS_LOCK;

  is_status_update = 1;
  break;

 case 131:
  client->fe_status = 0;

  is_status_update = 1;
  break;

 case 128:
  smsdvb_update_tx_params(client, p);

  is_status_update = 1;
  break;

 case 133:
  smsdvb_update_per_slices(client, p);

  is_status_update = 1;
  break;

 case 134:
  switch (smscore_get_device_mode(client->coredev)) {
  case 138:
  case 137:
   smsdvb_update_isdbt_stats(client, p);
   break;
  default:

   smsdvb_update_dvb_stats(client, p + sizeof(u32));
  }

  is_status_update = 1;
  break;


 case 135:

  smsdvb_update_isdbt_stats_ex(client, p + sizeof(u32));
  is_status_update = 1;
  break;
 default:
  pr_debug("message not handled\n");
 }
 smscore_putbuffer(client->coredev, cb);

 if (is_status_update) {
  if (client->fe_status & FE_HAS_LOCK) {
   sms_board_dvb3_event(client, DVB3_EVENT_FE_LOCK);
   if (client->last_per == c->block_error.stat[0].uvalue)
    sms_board_dvb3_event(client, DVB3_EVENT_UNC_OK);
   else
    sms_board_dvb3_event(client, DVB3_EVENT_UNC_ERR);
   client->has_tuned = 1;
  } else {
   smsdvb_stats_not_ready(fe);
   client->has_tuned = 0;
   sms_board_dvb3_event(client, DVB3_EVENT_FE_UNLOCK);
  }
  complete(&client->stats_done);
 }

 return 0;
}
