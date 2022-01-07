
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {scalar_t__ send_state; int tx_usecnt; int lock; } ;
struct hsi_client {int device; } ;


 int SEND_IDLE ;
 scalar_t__ SEND_READY ;
 scalar_t__ WAIT4READY ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int *,char*,scalar_t__) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int hsi_stop_tx (struct hsi_client*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssip_set_txstate (struct ssi_protocol*,int ) ;

int ssip_slave_stop_tx(struct hsi_client *master)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(master);

 WARN_ON_ONCE(atomic_read(&ssi->tx_usecnt) == 0);

 if (atomic_dec_and_test(&ssi->tx_usecnt)) {
  spin_lock_bh(&ssi->lock);
  if ((ssi->send_state == SEND_READY) ||
   (ssi->send_state == WAIT4READY)) {
   ssip_set_txstate(ssi, SEND_IDLE);
   hsi_stop_tx(master);
  }
  spin_unlock_bh(&ssi->lock);
 }
 dev_dbg(&master->device, "stop TX %d\n", atomic_read(&ssi->tx_usecnt));

 return 0;
}
