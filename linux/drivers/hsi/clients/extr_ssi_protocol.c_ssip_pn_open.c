
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssi_protocol {int lock; int main_state; int flags; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct hsi_client {int device; } ;


 int HANDSHAKE ;
 int SSIP_WAKETEST_FLAG ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int hsi_claim_port (struct hsi_client*,int) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int hsi_register_port_event (struct hsi_client*,int ) ;
 int hsi_setup (struct hsi_client*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssi_waketest (struct hsi_client*,int) ;
 int ssip_port_event ;
 int ssip_send_bootinfo_req_cmd (struct hsi_client*) ;
 int test_and_set_bit (int ,int *) ;
 struct hsi_client* to_hsi_client (int ) ;

__attribute__((used)) static int ssip_pn_open(struct net_device *dev)
{
 struct hsi_client *cl = to_hsi_client(dev->dev.parent);
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);
 int err;

 err = hsi_claim_port(cl, 1);
 if (err < 0) {
  dev_err(&cl->device, "SSI port already claimed\n");
  return err;
 }
 err = hsi_register_port_event(cl, ssip_port_event);
 if (err < 0) {
  dev_err(&cl->device, "Register HSI port event failed (%d)\n",
   err);
  return err;
 }
 dev_dbg(&cl->device, "Configuring SSI port\n");
 hsi_setup(cl);

 if (!test_and_set_bit(SSIP_WAKETEST_FLAG, &ssi->flags))
  ssi_waketest(cl, 1);

 spin_lock_bh(&ssi->lock);
 ssi->main_state = HANDSHAKE;
 spin_unlock_bh(&ssi->lock);

 ssip_send_bootinfo_req_cmd(cl);

 return 0;
}
