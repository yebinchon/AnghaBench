
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int hbm_state; int devc; int dev_state; } ;
struct hbm_host_enum_request {int hbm_cmd; int member_0; } ;
typedef int enum_req ;


 int HOST_ENUM_REQ_CMD ;
 int ISHTP_DEV_RESETTING ;
 int ISHTP_HBM_ENUM_CLIENTS ;
 int dev_err (int ,char*) ;
 int ish_hw_reset (struct ishtp_device*) ;
 int ishtp_hbm_hdr (struct ishtp_msg_hdr*,int) ;
 scalar_t__ ishtp_write_message (struct ishtp_device*,struct ishtp_msg_hdr*,struct hbm_host_enum_request*) ;

void ishtp_hbm_enum_clients_req(struct ishtp_device *dev)
{
 struct ishtp_msg_hdr hdr;
 struct hbm_host_enum_request enum_req = { 0 };


 ishtp_hbm_hdr(&hdr, sizeof(enum_req));
 enum_req.hbm_cmd = HOST_ENUM_REQ_CMD;

 if (ishtp_write_message(dev, &hdr, &enum_req)) {
  dev->dev_state = ISHTP_DEV_RESETTING;
  dev_err(dev->devc, "enumeration request send failed\n");
  ish_hw_reset(dev);
 }
 dev->hbm_state = ISHTP_HBM_ENUM_CLIENTS;
}
