
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int dummy; } ;
struct hbm_host_stop_request {int reason; int hbm_cmd; int member_0; } ;
typedef int stop_req ;


 int DRIVER_STOP_REQUEST ;
 int HOST_STOP_REQ_CMD ;
 int ishtp_hbm_hdr (struct ishtp_msg_hdr*,int) ;
 int ishtp_write_message (struct ishtp_device*,struct ishtp_msg_hdr*,struct hbm_host_stop_request*) ;

__attribute__((used)) static void ishtp_hbm_stop_req(struct ishtp_device *dev)
{
 struct ishtp_msg_hdr hdr;
 struct hbm_host_stop_request stop_req = { 0 } ;

 ishtp_hbm_hdr(&hdr, sizeof(stop_req));

 stop_req.hbm_cmd = HOST_STOP_REQ_CMD;
 stop_req.reason = DRIVER_STOP_REQUEST;

 ishtp_write_message(dev, &hdr, &stop_req);
}
