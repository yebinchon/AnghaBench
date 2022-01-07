
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int hbm_state; int dev_state; int devc; } ;
struct TYPE_2__ {int minor_version; int major_version; } ;
struct hbm_host_version_request {TYPE_1__ host_version; int hbm_cmd; int member_0; } ;
typedef int start_req ;


 int ENODEV ;
 int HBM_MAJOR_VERSION ;
 int HBM_MINOR_VERSION ;
 int HOST_START_REQ_CMD ;
 int ISHTP_DEV_RESETTING ;
 int ISHTP_HBM_IDLE ;
 int ISHTP_HBM_START ;
 int dev_err (int ,char*) ;
 int ish_hw_reset (struct ishtp_device*) ;
 int ishtp_hbm_hdr (struct ishtp_msg_hdr*,int) ;
 scalar_t__ ishtp_write_message (struct ishtp_device*,struct ishtp_msg_hdr*,struct hbm_host_version_request*) ;

int ishtp_hbm_start_req(struct ishtp_device *dev)
{
 struct ishtp_msg_hdr hdr;
 struct hbm_host_version_request start_req = { 0 };

 ishtp_hbm_hdr(&hdr, sizeof(start_req));


 start_req.hbm_cmd = HOST_START_REQ_CMD;
 start_req.host_version.major_version = HBM_MAJOR_VERSION;
 start_req.host_version.minor_version = HBM_MINOR_VERSION;






 dev->hbm_state = ISHTP_HBM_START;
 if (ishtp_write_message(dev, &hdr, &start_req)) {
  dev_err(dev->devc, "version message send failed\n");
  dev->dev_state = ISHTP_DEV_RESETTING;
  dev->hbm_state = ISHTP_HBM_IDLE;
  ish_hw_reset(dev);
  return -ENODEV;
 }

 return 0;
}
