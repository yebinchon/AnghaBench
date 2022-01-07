
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int fw_client_presentation_num; unsigned long fw_client_index; int devc; int dev_state; TYPE_1__* fw_clients; int hbm_state; int fw_clients_map; } ;
struct hbm_props_request {unsigned long address; int hbm_cmd; int member_0; } ;
typedef int prop_req ;
struct TYPE_2__ {unsigned long client_id; } ;


 int EIO ;
 int HOST_CLIENT_PROPERTIES_REQ_CMD ;
 unsigned long ISHTP_CLIENTS_MAX ;
 int ISHTP_DEV_ENABLED ;
 int ISHTP_DEV_RESETTING ;
 int ISHTP_HBM_WORKING ;
 int dev_err (int ,char*) ;
 unsigned long find_next_bit (int ,unsigned long,unsigned long) ;
 int ish_hw_reset (struct ishtp_device*) ;
 int ishtp_bus_new_client (struct ishtp_device*) ;
 int ishtp_hbm_hdr (struct ishtp_msg_hdr*,int) ;
 scalar_t__ ishtp_write_message (struct ishtp_device*,struct ishtp_msg_hdr*,struct hbm_props_request*) ;

__attribute__((used)) static int ishtp_hbm_prop_req(struct ishtp_device *dev)
{
 struct ishtp_msg_hdr hdr;
 struct hbm_props_request prop_req = { 0 };
 unsigned long next_client_index;
 uint8_t client_num;

 client_num = dev->fw_client_presentation_num;

 next_client_index = find_next_bit(dev->fw_clients_map,
  ISHTP_CLIENTS_MAX, dev->fw_client_index);


 if (next_client_index == ISHTP_CLIENTS_MAX) {
  dev->hbm_state = ISHTP_HBM_WORKING;
  dev->dev_state = ISHTP_DEV_ENABLED;

  for (dev->fw_client_presentation_num = 1;
   dev->fw_client_presentation_num < client_num + 1;
    ++dev->fw_client_presentation_num)

   ishtp_bus_new_client(dev);
  return 0;
 }

 dev->fw_clients[client_num].client_id = next_client_index;

 ishtp_hbm_hdr(&hdr, sizeof(prop_req));

 prop_req.hbm_cmd = HOST_CLIENT_PROPERTIES_REQ_CMD;
 prop_req.address = next_client_index;

 if (ishtp_write_message(dev, &hdr, &prop_req)) {
  dev->dev_state = ISHTP_DEV_RESETTING;
  dev_err(dev->devc, "properties request send failed\n");
  ish_hw_reset(dev);
  return -EIO;
 }

 dev->fw_client_index = next_client_index;

 return 0;
}
