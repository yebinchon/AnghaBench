
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int dummy; } ;
struct ishtp_cl {int dummy; } ;
struct hbm_client_connect_request {int dummy; } ;
typedef int disconn_req ;


 int CLIENT_DISCONNECT_REQ_CMD ;
 int ishtp_hbm_cl_hdr (struct ishtp_cl*,int ,struct hbm_client_connect_request*,size_t const) ;
 int ishtp_hbm_hdr (struct ishtp_msg_hdr*,size_t const) ;
 int ishtp_write_message (struct ishtp_device*,struct ishtp_msg_hdr*,struct hbm_client_connect_request*) ;

int ishtp_hbm_cl_disconnect_req(struct ishtp_device *dev, struct ishtp_cl *cl)
{
 struct ishtp_msg_hdr hdr;
 struct hbm_client_connect_request disconn_req;
 const size_t len = sizeof(disconn_req);

 ishtp_hbm_hdr(&hdr, len);
 ishtp_hbm_cl_hdr(cl, CLIENT_DISCONNECT_REQ_CMD, &disconn_req, len);

 return ishtp_write_message(dev, &hdr, &disconn_req);
}
