#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ block_error; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
struct smsdvb_client_t {int has_tuned; int fe_status; scalar_t__ last_per; int /*<<< orphan*/  stats_done; int /*<<< orphan*/  coredev; int /*<<< orphan*/  tune_done; int /*<<< orphan*/  demux; int /*<<< orphan*/  feed_users; struct dvb_frontend frontend; } ;
struct smscore_buffer_t {int offset; int /*<<< orphan*/  size; scalar_t__ p; } ;
struct sms_msg_hdr {int msg_type; } ;
struct TYPE_3__ {scalar_t__ uvalue; } ;

/* Variables and functions */
#define  DEVICE_MODE_ISDBT 138 
#define  DEVICE_MODE_ISDBT_BDA 137 
 int /*<<< orphan*/  DVB3_EVENT_FE_LOCK ; 
 int /*<<< orphan*/  DVB3_EVENT_FE_UNLOCK ; 
 int /*<<< orphan*/  DVB3_EVENT_UNC_ERR ; 
 int /*<<< orphan*/  DVB3_EVENT_UNC_OK ; 
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int FE_HAS_SYNC ; 
 int FE_HAS_VITERBI ; 
#define  MSG_SMS_DVBT_BDA_DATA 136 
#define  MSG_SMS_GET_STATISTICS_EX_RES 135 
#define  MSG_SMS_GET_STATISTICS_RES 134 
#define  MSG_SMS_HO_PER_SLICES_IND 133 
#define  MSG_SMS_ISDBT_TUNE_RES 132 
#define  MSG_SMS_NO_SIGNAL_IND 131 
#define  MSG_SMS_RF_TUNE_RES 130 
#define  MSG_SMS_SIGNAL_DETECTED_IND 129 
#define  MSG_SMS_TRANSMISSION_IND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct smsdvb_client_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct smscore_buffer_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC7 (struct smsdvb_client_t*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct smsdvb_client_t*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct smsdvb_client_t*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct smsdvb_client_t*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct smsdvb_client_t*,void*) ; 

__attribute__((used)) static int FUNC12(void *context, struct smscore_buffer_t *cb)
{
	struct smsdvb_client_t *client = (struct smsdvb_client_t *) context;
	struct sms_msg_hdr *phdr = (struct sms_msg_hdr *) (((u8 *) cb->p)
			+ cb->offset);
	void *p = phdr + 1;
	struct dvb_frontend *fe = &client->frontend;
	struct dtv_frontend_properties *c = &fe->dtv_property_cache;
	bool is_status_update = false;

	switch (phdr->msg_type) {
	case MSG_SMS_DVBT_BDA_DATA:
		/*
		 * Only feed data to dvb demux if are there any feed listening
		 * to it and if the device has tuned
		 */
		if (client->feed_users && client->has_tuned)
			FUNC1(&client->demux, p,
					 cb->size - sizeof(struct sms_msg_hdr));
		break;

	case MSG_SMS_RF_TUNE_RES:
	case MSG_SMS_ISDBT_TUNE_RES:
		FUNC0(&client->tune_done);
		break;

	case MSG_SMS_SIGNAL_DETECTED_IND:
		client->fe_status = FE_HAS_SIGNAL  | FE_HAS_CARRIER |
				    FE_HAS_VITERBI | FE_HAS_SYNC    |
				    FE_HAS_LOCK;

		is_status_update = true;
		break;

	case MSG_SMS_NO_SIGNAL_IND:
		client->fe_status = 0;

		is_status_update = true;
		break;

	case MSG_SMS_TRANSMISSION_IND:
		FUNC11(client, p);

		is_status_update = true;
		break;

	case MSG_SMS_HO_PER_SLICES_IND:
		FUNC10(client, p);

		is_status_update = true;
		break;

	case MSG_SMS_GET_STATISTICS_RES:
		switch (FUNC4(client->coredev)) {
		case DEVICE_MODE_ISDBT:
		case DEVICE_MODE_ISDBT_BDA:
			FUNC8(client, p);
			break;
		default:
			/* Skip sms_msg_statistics_info:request_result field */
			FUNC7(client, p + sizeof(u32));
		}

		is_status_update = true;
		break;

	/* Only for ISDB-T */
	case MSG_SMS_GET_STATISTICS_EX_RES:
		/* Skip sms_msg_statistics_info:request_result field? */
		FUNC9(client, p + sizeof(u32));
		is_status_update = true;
		break;
	default:
		FUNC2("message not handled\n");
	}
	FUNC5(client->coredev, cb);

	if (is_status_update) {
		if (client->fe_status & FE_HAS_LOCK) {
			FUNC3(client, DVB3_EVENT_FE_LOCK);
			if (client->last_per == c->block_error.stat[0].uvalue)
				FUNC3(client, DVB3_EVENT_UNC_OK);
			else
				FUNC3(client, DVB3_EVENT_UNC_ERR);
			client->has_tuned = true;
		} else {
			FUNC6(fe);
			client->has_tuned = false;
			FUNC3(client, DVB3_EVENT_FE_UNLOCK);
		}
		FUNC0(&client->stats_done);
	}

	return 0;
}