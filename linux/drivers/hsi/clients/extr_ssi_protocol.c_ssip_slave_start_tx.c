
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {scalar_t__ send_state; int tx_usecnt; int lock; } ;
struct hsi_client {int device; } ;


 scalar_t__ SEND_IDLE ;
 int WAIT4READY ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int dev_dbg (int *,char*,int ) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int hsi_start_tx (struct hsi_client*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssip_set_txstate (struct ssi_protocol*,int ) ;

int ssip_slave_start_tx(struct hsi_client *master)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(master);

 dev_dbg(&master->device, "start TX %d\n", atomic_read(&ssi->tx_usecnt));
 spin_lock_bh(&ssi->lock);
 if (ssi->send_state == SEND_IDLE) {
  ssip_set_txstate(ssi, WAIT4READY);
  hsi_start_tx(master);
 }
 spin_unlock_bh(&ssi->lock);
 atomic_inc(&ssi->tx_usecnt);

 return 0;
}
