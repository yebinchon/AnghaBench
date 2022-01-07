
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hsi_msg {scalar_t__ status; struct hsi_client* cl; } ;
struct hsi_client {int device; } ;


 scalar_t__ HSI_STATUS_ERROR ;


 unsigned int SSIP_COMMAND (int ) ;




 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int ) ;
 int hsi_async_read (struct hsi_client*,struct hsi_msg*) ;
 int ssip_error (struct hsi_client*) ;
 int ssip_get_cmd (struct hsi_msg*) ;
 int ssip_release_cmd (struct hsi_msg*) ;
 int ssip_rx_bootinforeq (struct hsi_client*,int ) ;
 int ssip_rx_bootinforesp (struct hsi_client*,int ) ;
 int ssip_rx_ready (struct hsi_client*) ;
 int ssip_rx_strans (struct hsi_client*,int ) ;
 int ssip_rx_waketest (struct hsi_client*,int ) ;

__attribute__((used)) static void ssip_rxcmd_complete(struct hsi_msg *msg)
{
 struct hsi_client *cl = msg->cl;
 u32 cmd = ssip_get_cmd(msg);
 unsigned int cmdid = SSIP_COMMAND(cmd);

 if (msg->status == HSI_STATUS_ERROR) {
  dev_err(&cl->device, "RX error detected\n");
  ssip_release_cmd(msg);
  ssip_error(cl);
  return;
 }
 hsi_async_read(cl, msg);
 dev_dbg(&cl->device, "RX cmd: 0x%08x\n", cmd);
 switch (cmdid) {
 case 129:

  break;
 case 133:
  ssip_rx_bootinforeq(cl, cmd);
  break;
 case 132:
  ssip_rx_bootinforesp(cl, cmd);
  break;
 case 128:
  ssip_rx_waketest(cl, cmd);
  break;
 case 130:
  ssip_rx_strans(cl, cmd);
  break;
 case 131:
  ssip_rx_ready(cl);
  break;
 default:
  dev_warn(&cl->device, "command 0x%08x not supported\n", cmd);
  break;
 }
}
