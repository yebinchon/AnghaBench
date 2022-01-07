
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int capabilities; } ;
struct TYPE_15__ {int filternum; int feednum; TYPE_1__ dmx; int stop_feed; int start_feed; } ;
struct TYPE_14__ {int filternum; scalar_t__ capabilities; TYPE_1__* demux; } ;
struct TYPE_12__ {int * delsys; } ;
struct TYPE_13__ {TYPE_3__ ops; } ;
struct smsdvb_client_t {int event_fe_state; int event_unc_state; int adapter; TYPE_8__ demux; TYPE_6__ dmxdev; TYPE_4__ frontend; int entry; int stats_done; int tune_done; struct smscore_device_t* coredev; int smsclient; } ;
struct smscore_device_t {int media_dev; } ;
struct smsclient_params_t {int initial_id; struct smsdvb_client_t* context; int onremove_handler; int onresponse_handler; int data_type; } ;
struct dvb_frontend_ops {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_11__ {int name; } ;






 int DMX_TS_FILTERING ;
 int DVB3_EVENT_HOTPLUG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MSG_SMS_DVBT_BDA_DATA ;
 int SYS_DVBT ;
 int SYS_ISDBT ;
 int THIS_MODULE ;
 int adapter_nr ;
 int dvb_create_media_graph (int *,int) ;
 int dvb_dmx_init (TYPE_8__*) ;
 int dvb_dmx_release (TYPE_8__*) ;
 int dvb_dmxdev_init (TYPE_6__*,int *) ;
 int dvb_dmxdev_release (TYPE_6__*) ;
 int dvb_register_adapter (int *,int ,int ,struct device*,int ) ;
 int dvb_register_frontend (int *,TYPE_4__*) ;
 int dvb_register_media_controller (int *,int ) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (TYPE_4__*) ;
 int g_smsdvb_clients ;
 int g_smsdvb_clientslock ;
 int init_completion (int *) ;
 int kfree (struct smsdvb_client_t*) ;
 int kmutex_lock (int *) ;
 int kmutex_unlock (int *) ;
 struct smsdvb_client_t* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int pr_err (char*,int) ;
 int pr_info (char*) ;
 int sms_board_dvb3_event (struct smsdvb_client_t*,int ) ;
 int sms_board_setup (struct smscore_device_t*) ;
 TYPE_2__* sms_get_board (int ) ;
 int smscore_get_board_id (struct smscore_device_t*) ;
 int smscore_get_device_mode (struct smscore_device_t*) ;
 int smscore_register_client (struct smscore_device_t*,struct smsclient_params_t*,int *) ;
 scalar_t__ smsdvb_debugfs_create (struct smsdvb_client_t*) ;
 int smsdvb_fe_ops ;
 int smsdvb_media_device_unregister (struct smsdvb_client_t*) ;
 int smsdvb_onremove ;
 int smsdvb_onresponse ;
 int smsdvb_start_feed ;
 int smsdvb_stop_feed ;

__attribute__((used)) static int smsdvb_hotplug(struct smscore_device_t *coredev,
     struct device *device, int arrival)
{
 struct smsclient_params_t params;
 struct smsdvb_client_t *client;
 int rc;


 if (!arrival)
  return 0;
 client = kzalloc(sizeof(struct smsdvb_client_t), GFP_KERNEL);
 if (!client)
  return -ENOMEM;


 rc = dvb_register_adapter(&client->adapter,
      sms_get_board(
     smscore_get_board_id(coredev))->name,
      THIS_MODULE, device, adapter_nr);
 if (rc < 0) {
  pr_err("dvb_register_adapter() failed %d\n", rc);
  goto adapter_error;
 }
 dvb_register_media_controller(&client->adapter, coredev->media_dev);


 client->demux.dmx.capabilities = DMX_TS_FILTERING;
 client->demux.filternum = 32;
 client->demux.feednum = 32;
 client->demux.start_feed = smsdvb_start_feed;
 client->demux.stop_feed = smsdvb_stop_feed;

 rc = dvb_dmx_init(&client->demux);
 if (rc < 0) {
  pr_err("dvb_dmx_init failed %d\n", rc);
  goto dvbdmx_error;
 }


 client->dmxdev.filternum = 32;
 client->dmxdev.demux = &client->demux.dmx;
 client->dmxdev.capabilities = 0;

 rc = dvb_dmxdev_init(&client->dmxdev, &client->adapter);
 if (rc < 0) {
  pr_err("dvb_dmxdev_init failed %d\n", rc);
  goto dmxdev_error;
 }


 memcpy(&client->frontend.ops, &smsdvb_fe_ops,
        sizeof(struct dvb_frontend_ops));

 switch (smscore_get_device_mode(coredev)) {
 case 131:
 case 130:
  client->frontend.ops.delsys[0] = SYS_DVBT;
  break;
 case 129:
 case 128:
  client->frontend.ops.delsys[0] = SYS_ISDBT;
  break;
 }

 rc = dvb_register_frontend(&client->adapter, &client->frontend);
 if (rc < 0) {
  pr_err("frontend registration failed %d\n", rc);
  goto frontend_error;
 }

 params.initial_id = 1;
 params.data_type = MSG_SMS_DVBT_BDA_DATA;
 params.onresponse_handler = smsdvb_onresponse;
 params.onremove_handler = smsdvb_onremove;
 params.context = client;

 rc = smscore_register_client(coredev, &params, &client->smsclient);
 if (rc < 0) {
  pr_err("smscore_register_client() failed %d\n", rc);
  goto client_error;
 }

 client->coredev = coredev;

 init_completion(&client->tune_done);
 init_completion(&client->stats_done);

 kmutex_lock(&g_smsdvb_clientslock);

 list_add(&client->entry, &g_smsdvb_clients);

 kmutex_unlock(&g_smsdvb_clientslock);

 client->event_fe_state = -1;
 client->event_unc_state = -1;
 sms_board_dvb3_event(client, DVB3_EVENT_HOTPLUG);

 sms_board_setup(coredev);

 if (smsdvb_debugfs_create(client) < 0)
  pr_info("failed to create debugfs node\n");

 rc = dvb_create_media_graph(&client->adapter, 1);
 if (rc < 0) {
  pr_err("dvb_create_media_graph failed %d\n", rc);
  goto client_error;
 }

 pr_info("DVB interface registered.\n");
 return 0;

client_error:
 dvb_unregister_frontend(&client->frontend);

frontend_error:
 dvb_dmxdev_release(&client->dmxdev);

dmxdev_error:
 dvb_dmx_release(&client->demux);

dvbdmx_error:
 smsdvb_media_device_unregister(client);
 dvb_unregister_adapter(&client->adapter);

adapter_error:
 kfree(client);
 return rc;
}
