
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ssi_protocol {scalar_t__ recv_state; int send_state; int lock; int keep_alive; int tx_usecnt; int main_state; struct hsi_client* cl; } ;
struct hsi_client {int device; } ;


 scalar_t__ RECV_IDLE ;


 int SSIP_KATOUT ;
 int atomic_read (int *) ;
 int dev_dbg (int *,char*,int ,scalar_t__,int) ;
 struct ssi_protocol* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int keep_alive ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct ssi_protocol* ssi ;

__attribute__((used)) static void ssip_keep_alive(struct timer_list *t)
{
 struct ssi_protocol *ssi = from_timer(ssi, t, keep_alive);
 struct hsi_client *cl = ssi->cl;

 dev_dbg(&cl->device, "Keep alive kick in: m(%d) r(%d) s(%d)\n",
  ssi->main_state, ssi->recv_state, ssi->send_state);

 spin_lock(&ssi->lock);
 if (ssi->recv_state == RECV_IDLE)
  switch (ssi->send_state) {
  case 128:
   if (atomic_read(&ssi->tx_usecnt) == 0)
    break;





  case 129:
   spin_unlock(&ssi->lock);
   return;
  }
 mod_timer(&ssi->keep_alive, jiffies + msecs_to_jiffies(SSIP_KATOUT));
 spin_unlock(&ssi->lock);
}
