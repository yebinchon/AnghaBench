#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  capabilities; } ;
struct TYPE_15__ {int filternum; int feednum; TYPE_1__ dmx; int /*<<< orphan*/  stop_feed; int /*<<< orphan*/  start_feed; } ;
struct TYPE_14__ {int filternum; scalar_t__ capabilities; TYPE_1__* demux; } ;
struct TYPE_12__ {int /*<<< orphan*/ * delsys; } ;
struct TYPE_13__ {TYPE_3__ ops; } ;
struct smsdvb_client_t {int event_fe_state; int event_unc_state; int /*<<< orphan*/  adapter; TYPE_8__ demux; TYPE_6__ dmxdev; TYPE_4__ frontend; int /*<<< orphan*/  entry; int /*<<< orphan*/  stats_done; int /*<<< orphan*/  tune_done; struct smscore_device_t* coredev; int /*<<< orphan*/  smsclient; } ;
struct smscore_device_t {int /*<<< orphan*/  media_dev; } ;
struct smsclient_params_t {int initial_id; struct smsdvb_client_t* context; int /*<<< orphan*/  onremove_handler; int /*<<< orphan*/  onresponse_handler; int /*<<< orphan*/  data_type; } ;
struct dvb_frontend_ops {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  DEVICE_MODE_DVBT 131 
#define  DEVICE_MODE_DVBT_BDA 130 
#define  DEVICE_MODE_ISDBT 129 
#define  DEVICE_MODE_ISDBT_BDA 128 
 int /*<<< orphan*/  DMX_TS_FILTERING ; 
 int /*<<< orphan*/  DVB3_EVENT_HOTPLUG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_SMS_DVBT_BDA_DATA ; 
 int /*<<< orphan*/  SYS_DVBT ; 
 int /*<<< orphan*/  SYS_ISDBT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int FUNC3 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  g_smsdvb_clients ; 
 int /*<<< orphan*/  g_smsdvb_clientslock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct smsdvb_client_t*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct smsdvb_client_t* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (struct smsdvb_client_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct smscore_device_t*) ; 
 TYPE_2__* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct smscore_device_t*) ; 
 int FUNC23 (struct smscore_device_t*) ; 
 int FUNC24 (struct smscore_device_t*,struct smsclient_params_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (struct smsdvb_client_t*) ; 
 int /*<<< orphan*/  smsdvb_fe_ops ; 
 int /*<<< orphan*/  FUNC26 (struct smsdvb_client_t*) ; 
 int /*<<< orphan*/  smsdvb_onremove ; 
 int /*<<< orphan*/  smsdvb_onresponse ; 
 int /*<<< orphan*/  smsdvb_start_feed ; 
 int /*<<< orphan*/  smsdvb_stop_feed ; 

__attribute__((used)) static int FUNC27(struct smscore_device_t *coredev,
			  struct device *device, int arrival)
{
	struct smsclient_params_t params;
	struct smsdvb_client_t *client;
	int rc;

	/* device removal handled by onremove callback */
	if (!arrival)
		return 0;
	client = FUNC14(sizeof(struct smsdvb_client_t), GFP_KERNEL);
	if (!client)
		return -ENOMEM;

	/* register dvb adapter */
	rc = FUNC5(&client->adapter,
				  FUNC21(
					FUNC22(coredev))->name,
				  THIS_MODULE, device, adapter_nr);
	if (rc < 0) {
		FUNC17("dvb_register_adapter() failed %d\n", rc);
		goto adapter_error;
	}
	FUNC7(&client->adapter, coredev->media_dev);

	/* init dvb demux */
	client->demux.dmx.capabilities = DMX_TS_FILTERING;
	client->demux.filternum = 32; /* todo: nova ??? */
	client->demux.feednum = 32;
	client->demux.start_feed = smsdvb_start_feed;
	client->demux.stop_feed = smsdvb_stop_feed;

	rc = FUNC1(&client->demux);
	if (rc < 0) {
		FUNC17("dvb_dmx_init failed %d\n", rc);
		goto dvbdmx_error;
	}

	/* init dmxdev */
	client->dmxdev.filternum = 32;
	client->dmxdev.demux = &client->demux.dmx;
	client->dmxdev.capabilities = 0;

	rc = FUNC3(&client->dmxdev, &client->adapter);
	if (rc < 0) {
		FUNC17("dvb_dmxdev_init failed %d\n", rc);
		goto dmxdev_error;
	}

	/* init and register frontend */
	FUNC16(&client->frontend.ops, &smsdvb_fe_ops,
	       sizeof(struct dvb_frontend_ops));

	switch (FUNC23(coredev)) {
	case DEVICE_MODE_DVBT:
	case DEVICE_MODE_DVBT_BDA:
		client->frontend.ops.delsys[0] = SYS_DVBT;
		break;
	case DEVICE_MODE_ISDBT:
	case DEVICE_MODE_ISDBT_BDA:
		client->frontend.ops.delsys[0] = SYS_ISDBT;
		break;
	}

	rc = FUNC6(&client->adapter, &client->frontend);
	if (rc < 0) {
		FUNC17("frontend registration failed %d\n", rc);
		goto frontend_error;
	}

	params.initial_id = 1;
	params.data_type = MSG_SMS_DVBT_BDA_DATA;
	params.onresponse_handler = smsdvb_onresponse;
	params.onremove_handler = smsdvb_onremove;
	params.context = client;

	rc = FUNC24(coredev, &params, &client->smsclient);
	if (rc < 0) {
		FUNC17("smscore_register_client() failed %d\n", rc);
		goto client_error;
	}

	client->coredev = coredev;

	FUNC10(&client->tune_done);
	FUNC10(&client->stats_done);

	FUNC12(&g_smsdvb_clientslock);

	FUNC15(&client->entry, &g_smsdvb_clients);

	FUNC13(&g_smsdvb_clientslock);

	client->event_fe_state = -1;
	client->event_unc_state = -1;
	FUNC19(client, DVB3_EVENT_HOTPLUG);

	FUNC20(coredev);

	if (FUNC25(client) < 0)
		FUNC18("failed to create debugfs node\n");

	rc = FUNC0(&client->adapter, true);
	if (rc < 0) {
		FUNC17("dvb_create_media_graph failed %d\n", rc);
		goto client_error;
	}

	FUNC18("DVB interface registered.\n");
	return 0;

client_error:
	FUNC9(&client->frontend);

frontend_error:
	FUNC4(&client->dmxdev);

dmxdev_error:
	FUNC2(&client->demux);

dvbdmx_error:
	FUNC26(client);
	FUNC8(&client->adapter);

adapter_error:
	FUNC11(client);
	return rc;
}