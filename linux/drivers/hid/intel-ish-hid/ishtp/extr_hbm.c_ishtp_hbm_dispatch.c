
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_fw_client {int props; int client_id; } ;
struct TYPE_2__ {int minor_version; int major_version; } ;
struct ishtp_device {void* hbm_state; size_t fw_client_presentation_num; int ishtp_host_dma_enabled; int devc; int ishtp_host_dma_tx_buf; int dev_state; int fw_client_index; int fw_clients_map; int ishtp_host_dma_rx_buf_phys; int ishtp_host_dma_rx_buf_size; int ishtp_host_dma_rx_buf; struct ishtp_fw_client* fw_clients; int wait_hbm_recvd_msg; TYPE_1__ version; } ;
struct ishtp_bus_message {int hbm_cmd; } ;
struct hbm_props_response {int client_properties; int address; int status; } ;
struct hbm_host_version_response {TYPE_1__ fw_max_version; int host_version_supported; } ;
struct hbm_host_enum_response {int valid_addresses; } ;
struct hbm_client_connect_response {int dummy; } ;
struct hbm_client_connect_request {int dummy; } ;
struct dma_xfer_hbm {int dummy; } ;
struct dma_alloc_notify {int buf_address; int buf_size; int hbm; } ;
typedef int dma_alloc_notify ;





 int DMA_BUFFER_ALLOC_NOTIFY ;




 int HBM_MAJOR_VERSION ;
 int HBM_MINOR_VERSION ;




 int ISHTP_DEV_DISABLED ;
 int ISHTP_DEV_ENABLED ;
 int ISHTP_DEV_INIT_CLIENTS ;
 void* ISHTP_HBM_CLIENT_PROPERTIES ;
 void* ISHTP_HBM_ENUM_CLIENTS ;
 void* ISHTP_HBM_START ;
 void* ISHTP_HBM_STARTED ;
 void* ISHTP_HBM_STOPPED ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*) ;
 int ish_hw_reset (struct ishtp_device*) ;
 int ishtp_cl_alloc_dma_buf (struct ishtp_device*) ;
 int ishtp_hbm_cl_connect_res (struct ishtp_device*,struct hbm_client_connect_response*) ;
 int ishtp_hbm_cl_disconnect_res (struct ishtp_device*,struct hbm_client_connect_response*) ;
 int ishtp_hbm_dma_xfer (struct ishtp_device*,struct dma_xfer_hbm*) ;
 int ishtp_hbm_dma_xfer_ack (struct ishtp_device*,struct dma_xfer_hbm*) ;
 int ishtp_hbm_enum_clients_req (struct ishtp_device*) ;
 int ishtp_hbm_fw_cl_allocate (struct ishtp_device*) ;
 int ishtp_hbm_fw_disconnect_req (struct ishtp_device*,struct hbm_client_connect_request*) ;
 int ishtp_hbm_hdr (struct ishtp_msg_hdr*,size_t const) ;
 int ishtp_hbm_prop_req (struct ishtp_device*) ;
 int ishtp_hbm_stop_req (struct ishtp_device*) ;
 int ishtp_use_dma_transfer () ;
 int ishtp_write_message (struct ishtp_device*,struct ishtp_msg_hdr*,unsigned char*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct dma_alloc_notify*,int ,int) ;
 int wake_up_interruptible (int *) ;

void ishtp_hbm_dispatch(struct ishtp_device *dev,
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
 struct dma_alloc_notify dma_alloc_notify;
 struct dma_xfer_hbm *dma_xfer;

 ishtp_msg = hdr;

 switch (ishtp_msg->hbm_cmd) {
 case 129:
  version_res = (struct hbm_host_version_response *)ishtp_msg;
  if (!version_res->host_version_supported) {
   dev->version = version_res->fw_max_version;

   dev->hbm_state = ISHTP_HBM_STOPPED;
   ishtp_hbm_stop_req(dev);
   return;
  }

  dev->version.major_version = HBM_MAJOR_VERSION;
  dev->version.minor_version = HBM_MINOR_VERSION;
  if (dev->dev_state == ISHTP_DEV_INIT_CLIENTS &&
    dev->hbm_state == ISHTP_HBM_START) {
   dev->hbm_state = ISHTP_HBM_STARTED;
   ishtp_hbm_enum_clients_req(dev);
  } else {
   dev_err(dev->devc,
    "reset: wrong host start response\n");

   ish_hw_reset(dev);
   return;
  }

  wake_up_interruptible(&dev->wait_hbm_recvd_msg);
  break;

 case 138:
  connect_res = (struct hbm_client_connect_response *)ishtp_msg;
  ishtp_hbm_cl_connect_res(dev, connect_res);
  break;

 case 136:
  disconnect_res =
   (struct hbm_client_connect_response *)ishtp_msg;
  ishtp_hbm_cl_disconnect_res(dev, disconnect_res);
  break;

 case 131:
  props_res = (struct hbm_props_response *)ishtp_msg;
  fw_client = &dev->fw_clients[dev->fw_client_presentation_num];

  if (props_res->status || !dev->fw_clients) {
   dev_err(dev->devc,
   "reset: properties response hbm wrong status\n");
   ish_hw_reset(dev);
   return;
  }

  if (fw_client->client_id != props_res->address) {
   dev_err(dev->devc,
    "reset: host properties response address mismatch [%02X %02X]\n",
    fw_client->client_id, props_res->address);
   ish_hw_reset(dev);
   return;
  }

  if (dev->dev_state != ISHTP_DEV_INIT_CLIENTS ||
   dev->hbm_state != ISHTP_HBM_CLIENT_PROPERTIES) {
   dev_err(dev->devc,
    "reset: unexpected properties response\n");
   ish_hw_reset(dev);
   return;
  }

  fw_client->props = props_res->client_properties;
  dev->fw_client_index++;
  dev->fw_client_presentation_num++;


  ishtp_hbm_prop_req(dev);

  if (dev->dev_state != ISHTP_DEV_ENABLED)
   break;

  if (!ishtp_use_dma_transfer())
   break;

  dev_dbg(dev->devc, "Requesting to use DMA\n");
  ishtp_cl_alloc_dma_buf(dev);
  if (dev->ishtp_host_dma_rx_buf) {
   const size_t len = sizeof(dma_alloc_notify);

   memset(&dma_alloc_notify, 0, sizeof(dma_alloc_notify));
   dma_alloc_notify.hbm = DMA_BUFFER_ALLOC_NOTIFY;
   dma_alloc_notify.buf_size =
     dev->ishtp_host_dma_rx_buf_size;
   dma_alloc_notify.buf_address =
     dev->ishtp_host_dma_rx_buf_phys;
   ishtp_hbm_hdr(&ishtp_hdr, len);
   ishtp_write_message(dev, &ishtp_hdr,
    (unsigned char *)&dma_alloc_notify);
  }

  break;

 case 130:
  enum_res = (struct hbm_host_enum_response *) ishtp_msg;
  memcpy(dev->fw_clients_map, enum_res->valid_addresses, 32);
  if (dev->dev_state == ISHTP_DEV_INIT_CLIENTS &&
   dev->hbm_state == ISHTP_HBM_ENUM_CLIENTS) {
   dev->fw_client_presentation_num = 0;
   dev->fw_client_index = 0;

   ishtp_hbm_fw_cl_allocate(dev);
   dev->hbm_state = ISHTP_HBM_CLIENT_PROPERTIES;


   ishtp_hbm_prop_req(dev);
  } else {
   dev_err(dev->devc,
         "reset: unexpected enumeration response hbm\n");
   ish_hw_reset(dev);
   return;
  }
  break;

 case 128:
  if (dev->hbm_state != ISHTP_HBM_STOPPED)
   dev_err(dev->devc, "unexpected stop response\n");

  dev->dev_state = ISHTP_DEV_DISABLED;
  dev_info(dev->devc, "reset: FW stop response\n");
  ish_hw_reset(dev);
  break;

 case 137:

  disconnect_req =
   (struct hbm_client_connect_request *)ishtp_msg;
  ishtp_hbm_fw_disconnect_req(dev, disconnect_req);
  break;

 case 132:
  dev->hbm_state = ISHTP_HBM_STOPPED;
  break;

 case 135:
  dev->ishtp_host_dma_enabled = 1;
  break;

 case 134:
  dma_xfer = (struct dma_xfer_hbm *)ishtp_msg;
  if (!dev->ishtp_host_dma_enabled) {
   dev_err(dev->devc,
    "DMA XFER requested but DMA is not enabled\n");
   break;
  }
  ishtp_hbm_dma_xfer(dev, dma_xfer);
  break;

 case 133:
  dma_xfer = (struct dma_xfer_hbm *)ishtp_msg;
  if (!dev->ishtp_host_dma_enabled ||
      !dev->ishtp_host_dma_tx_buf) {
   dev_err(dev->devc,
    "DMA XFER acked but DMA Tx is not enabled\n");
   break;
  }
  ishtp_hbm_dma_xfer_ack(dev, dma_xfer);
  break;

 default:
  dev_err(dev->devc, "unknown HBM: %u\n",
   (unsigned int)ishtp_msg->hbm_cmd);

  break;
 }
}
