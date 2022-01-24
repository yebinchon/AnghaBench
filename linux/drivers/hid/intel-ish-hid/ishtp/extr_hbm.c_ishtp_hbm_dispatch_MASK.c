#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_fw_client {int /*<<< orphan*/  props; int /*<<< orphan*/  client_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  minor_version; int /*<<< orphan*/  major_version; } ;
struct ishtp_device {void* hbm_state; size_t fw_client_presentation_num; int ishtp_host_dma_enabled; int /*<<< orphan*/  devc; int /*<<< orphan*/  ishtp_host_dma_tx_buf; int /*<<< orphan*/  dev_state; int /*<<< orphan*/  fw_client_index; int /*<<< orphan*/  fw_clients_map; int /*<<< orphan*/  ishtp_host_dma_rx_buf_phys; int /*<<< orphan*/  ishtp_host_dma_rx_buf_size; int /*<<< orphan*/  ishtp_host_dma_rx_buf; struct ishtp_fw_client* fw_clients; int /*<<< orphan*/  wait_hbm_recvd_msg; TYPE_1__ version; } ;
struct ishtp_bus_message {int hbm_cmd; } ;
struct hbm_props_response {int /*<<< orphan*/  client_properties; int /*<<< orphan*/  address; int /*<<< orphan*/  status; } ;
struct hbm_host_version_response {TYPE_1__ fw_max_version; int /*<<< orphan*/  host_version_supported; } ;
struct hbm_host_enum_response {int /*<<< orphan*/  valid_addresses; } ;
struct hbm_client_connect_response {int dummy; } ;
struct hbm_client_connect_request {int dummy; } ;
struct dma_xfer_hbm {int dummy; } ;
struct dma_alloc_notify {int /*<<< orphan*/  buf_address; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  hbm; } ;
typedef  int /*<<< orphan*/  dma_alloc_notify ;

/* Variables and functions */
#define  CLIENT_CONNECT_RES_CMD 138 
#define  CLIENT_DISCONNECT_REQ_CMD 137 
#define  CLIENT_DISCONNECT_RES_CMD 136 
 int /*<<< orphan*/  DMA_BUFFER_ALLOC_NOTIFY ; 
#define  DMA_BUFFER_ALLOC_RESPONSE 135 
#define  DMA_XFER 134 
#define  DMA_XFER_ACK 133 
#define  FW_STOP_REQ_CMD 132 
 int /*<<< orphan*/  HBM_MAJOR_VERSION ; 
 int /*<<< orphan*/  HBM_MINOR_VERSION ; 
#define  HOST_CLIENT_PROPERTIES_RES_CMD 131 
#define  HOST_ENUM_RES_CMD 130 
#define  HOST_START_RES_CMD 129 
#define  HOST_STOP_RES_CMD 128 
 int /*<<< orphan*/  ISHTP_DEV_DISABLED ; 
 int /*<<< orphan*/  ISHTP_DEV_ENABLED ; 
 int /*<<< orphan*/  ISHTP_DEV_INIT_CLIENTS ; 
 void* ISHTP_HBM_CLIENT_PROPERTIES ; 
 void* ISHTP_HBM_ENUM_CLIENTS ; 
 void* ISHTP_HBM_START ; 
 void* ISHTP_HBM_STARTED ; 
 void* ISHTP_HBM_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ishtp_device*,struct hbm_client_connect_response*) ; 
 int /*<<< orphan*/  FUNC6 (struct ishtp_device*,struct hbm_client_connect_response*) ; 
 int /*<<< orphan*/  FUNC7 (struct ishtp_device*,struct dma_xfer_hbm*) ; 
 int /*<<< orphan*/  FUNC8 (struct ishtp_device*,struct dma_xfer_hbm*) ; 
 int /*<<< orphan*/  FUNC9 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ishtp_device*,struct hbm_client_connect_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct ishtp_msg_hdr*,size_t const) ; 
 int /*<<< orphan*/  FUNC13 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct ishtp_device*,struct ishtp_msg_hdr*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct dma_alloc_notify*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

void FUNC20(struct ishtp_device *dev,
			struct ishtp_bus_message *hdr)
{
	struct ishtp_bus_message *ishtp_msg;
	struct ishtp_fw_client *fw_client;
	struct hbm_host_version_response *version_res;
	struct hbm_client_connect_response *connect_res;
	struct hbm_client_connect_response *disconnect_res;
	struct hbm_client_connect_request *disconnect_req;
	struct hbm_props_response *props_res;
	struct hbm_host_enum_response *enum_res;
	struct ishtp_msg_hdr ishtp_hdr;
	struct dma_alloc_notify	dma_alloc_notify;
	struct dma_xfer_hbm	*dma_xfer;

	ishtp_msg = hdr;

	switch (ishtp_msg->hbm_cmd) {
	case HOST_START_RES_CMD:
		version_res = (struct hbm_host_version_response *)ishtp_msg;
		if (!version_res->host_version_supported) {
			dev->version = version_res->fw_max_version;

			dev->hbm_state = ISHTP_HBM_STOPPED;
			FUNC14(dev);
			return;
		}

		dev->version.major_version = HBM_MAJOR_VERSION;
		dev->version.minor_version = HBM_MINOR_VERSION;
		if (dev->dev_state == ISHTP_DEV_INIT_CLIENTS &&
				dev->hbm_state == ISHTP_HBM_START) {
			dev->hbm_state = ISHTP_HBM_STARTED;
			FUNC9(dev);
		} else {
			FUNC1(dev->devc,
				"reset: wrong host start response\n");
			/* BUG: why do we arrive here? */
			FUNC3(dev);
			return;
		}

		FUNC19(&dev->wait_hbm_recvd_msg);
		break;

	case CLIENT_CONNECT_RES_CMD:
		connect_res = (struct hbm_client_connect_response *)ishtp_msg;
		FUNC5(dev, connect_res);
		break;

	case CLIENT_DISCONNECT_RES_CMD:
		disconnect_res =
			(struct hbm_client_connect_response *)ishtp_msg;
		FUNC6(dev, disconnect_res);
		break;

	case HOST_CLIENT_PROPERTIES_RES_CMD:
		props_res = (struct hbm_props_response *)ishtp_msg;
		fw_client = &dev->fw_clients[dev->fw_client_presentation_num];

		if (props_res->status || !dev->fw_clients) {
			FUNC1(dev->devc,
			"reset: properties response hbm wrong status\n");
			FUNC3(dev);
			return;
		}

		if (fw_client->client_id != props_res->address) {
			FUNC1(dev->devc,
				"reset: host properties response address mismatch [%02X %02X]\n",
				fw_client->client_id, props_res->address);
			FUNC3(dev);
			return;
		}

		if (dev->dev_state != ISHTP_DEV_INIT_CLIENTS ||
			dev->hbm_state != ISHTP_HBM_CLIENT_PROPERTIES) {
			FUNC1(dev->devc,
				"reset: unexpected properties response\n");
			FUNC3(dev);
			return;
		}

		fw_client->props = props_res->client_properties;
		dev->fw_client_index++;
		dev->fw_client_presentation_num++;

		/* request property for the next client */
		FUNC13(dev);

		if (dev->dev_state != ISHTP_DEV_ENABLED)
			break;

		if (!FUNC15())
			break;

		FUNC0(dev->devc, "Requesting to use DMA\n");
		FUNC4(dev);
		if (dev->ishtp_host_dma_rx_buf) {
			const size_t len = sizeof(dma_alloc_notify);

			FUNC18(&dma_alloc_notify, 0, sizeof(dma_alloc_notify));
			dma_alloc_notify.hbm = DMA_BUFFER_ALLOC_NOTIFY;
			dma_alloc_notify.buf_size =
					dev->ishtp_host_dma_rx_buf_size;
			dma_alloc_notify.buf_address =
					dev->ishtp_host_dma_rx_buf_phys;
			FUNC12(&ishtp_hdr, len);
			FUNC16(dev, &ishtp_hdr,
				(unsigned char *)&dma_alloc_notify);
		}

		break;

	case HOST_ENUM_RES_CMD:
		enum_res = (struct hbm_host_enum_response *) ishtp_msg;
		FUNC17(dev->fw_clients_map, enum_res->valid_addresses, 32);
		if (dev->dev_state == ISHTP_DEV_INIT_CLIENTS &&
			dev->hbm_state == ISHTP_HBM_ENUM_CLIENTS) {
			dev->fw_client_presentation_num = 0;
			dev->fw_client_index = 0;

			FUNC10(dev);
			dev->hbm_state = ISHTP_HBM_CLIENT_PROPERTIES;

			/* first property request */
			FUNC13(dev);
		} else {
			FUNC1(dev->devc,
			      "reset: unexpected enumeration response hbm\n");
			FUNC3(dev);
			return;
		}
		break;

	case HOST_STOP_RES_CMD:
		if (dev->hbm_state != ISHTP_HBM_STOPPED)
			FUNC1(dev->devc, "unexpected stop response\n");

		dev->dev_state = ISHTP_DEV_DISABLED;
		FUNC2(dev->devc, "reset: FW stop response\n");
		FUNC3(dev);
		break;

	case CLIENT_DISCONNECT_REQ_CMD:
		/* search for client */
		disconnect_req =
			(struct hbm_client_connect_request *)ishtp_msg;
		FUNC11(dev, disconnect_req);
		break;

	case FW_STOP_REQ_CMD:
		dev->hbm_state = ISHTP_HBM_STOPPED;
		break;

	case DMA_BUFFER_ALLOC_RESPONSE:
		dev->ishtp_host_dma_enabled = 1;
		break;

	case DMA_XFER:
		dma_xfer = (struct dma_xfer_hbm *)ishtp_msg;
		if (!dev->ishtp_host_dma_enabled) {
			FUNC1(dev->devc,
				"DMA XFER requested but DMA is not enabled\n");
			break;
		}
		FUNC7(dev, dma_xfer);
		break;

	case DMA_XFER_ACK:
		dma_xfer = (struct dma_xfer_hbm *)ishtp_msg;
		if (!dev->ishtp_host_dma_enabled ||
		    !dev->ishtp_host_dma_tx_buf) {
			FUNC1(dev->devc,
				"DMA XFER acked but DMA Tx is not enabled\n");
			break;
		}
		FUNC8(dev, dma_xfer);
		break;

	default:
		FUNC1(dev->devc, "unknown HBM: %u\n",
			(unsigned int)ishtp_msg->hbm_cmd);

		break;
	}
}