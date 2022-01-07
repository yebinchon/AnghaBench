
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {scalar_t__ main_state; int lock; } ;
struct hsi_client {int device; } ;


 scalar_t__ ACTIVE ;
 int RECV_IDLE ;
 int dev_dbg (int *,char*,scalar_t__) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 scalar_t__ likely (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssip_set_rxstate (struct ssi_protocol*,int ) ;

__attribute__((used)) static void ssip_stop_rx(struct hsi_client *cl)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);

 dev_dbg(&cl->device, "RX stop M(%d)\n", ssi->main_state);
 spin_lock_bh(&ssi->lock);
 if (likely(ssi->main_state == ACTIVE))
  ssip_set_rxstate(ssi, RECV_IDLE);
 spin_unlock_bh(&ssi->lock);
}
