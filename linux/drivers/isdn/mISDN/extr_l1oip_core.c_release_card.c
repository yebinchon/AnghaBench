
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l1oip {size_t d_idx; int list; TYPE_1__* chan; int dev; scalar_t__ registered; scalar_t__ socket_thread; int workq; int timeout_tl; int keep_tl; } ;
struct TYPE_2__ {int disorder_skb; struct l1oip* bch; struct l1oip* dch; } ;


 int cancel_work_sync (int *) ;
 int del_timer (int *) ;
 int dev_kfree_skb (int ) ;
 int kfree (struct l1oip*) ;
 int l1oip_lock ;
 int l1oip_socket_close (struct l1oip*) ;
 int list_del (int *) ;
 int mISDN_freebchannel (struct l1oip*) ;
 int mISDN_freedchannel (struct l1oip*) ;
 int mISDN_unregister_device (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void
release_card(struct l1oip *hc)
{
 int ch;

 if (timer_pending(&hc->keep_tl))
  del_timer(&hc->keep_tl);

 if (timer_pending(&hc->timeout_tl))
  del_timer(&hc->timeout_tl);

 cancel_work_sync(&hc->workq);

 if (hc->socket_thread)
  l1oip_socket_close(hc);

 if (hc->registered && hc->chan[hc->d_idx].dch)
  mISDN_unregister_device(&hc->chan[hc->d_idx].dch->dev);
 for (ch = 0; ch < 128; ch++) {
  if (hc->chan[ch].dch) {
   mISDN_freedchannel(hc->chan[ch].dch);
   kfree(hc->chan[ch].dch);
  }
  if (hc->chan[ch].bch) {
   mISDN_freebchannel(hc->chan[ch].bch);
   kfree(hc->chan[ch].bch);



  }
 }

 spin_lock(&l1oip_lock);
 list_del(&hc->list);
 spin_unlock(&l1oip_lock);

 kfree(hc);
}
