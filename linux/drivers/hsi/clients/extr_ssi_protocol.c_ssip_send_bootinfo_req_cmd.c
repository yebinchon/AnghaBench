
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {int dummy; } ;
struct hsi_msg {int complete; } ;
struct hsi_client {int device; } ;


 int SSIP_BOOTINFO_REQ_CMD (int ) ;
 int SSIP_LOCAL_VERID ;
 int dev_dbg (int *,char*) ;
 int hsi_async_read (struct hsi_client*,struct hsi_msg*) ;
 int hsi_async_write (struct hsi_client*,struct hsi_msg*) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 struct hsi_msg* ssip_claim_cmd (struct ssi_protocol*) ;
 int ssip_release_cmd ;
 int ssip_rxcmd_complete ;
 int ssip_set_cmd (struct hsi_msg*,int ) ;

__attribute__((used)) static void ssip_send_bootinfo_req_cmd(struct hsi_client *cl)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);
 struct hsi_msg *msg;

 dev_dbg(&cl->device, "Issuing BOOT INFO REQ command\n");
 msg = ssip_claim_cmd(ssi);
 ssip_set_cmd(msg, SSIP_BOOTINFO_REQ_CMD(SSIP_LOCAL_VERID));
 msg->complete = ssip_release_cmd;
 hsi_async_write(cl, msg);
 dev_dbg(&cl->device, "Issuing RX command\n");
 msg = ssip_claim_cmd(ssi);
 msg->complete = ssip_rxcmd_complete;
 hsi_async_read(cl, msg);
}
