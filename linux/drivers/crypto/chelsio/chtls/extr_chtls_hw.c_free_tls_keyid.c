
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct chtls_hws {int rxkey; int txkey; } ;
struct chtls_sock {struct chtls_hws tlshws; struct chtls_dev* cdev; struct net_device* egress_dev; } ;
struct TYPE_4__ {int lock; int addr; } ;
struct chtls_dev {TYPE_2__ kmap; } ;
struct TYPE_3__ {int tls_key; } ;
struct adapter {TYPE_1__ chcr_stats; } ;


 int __clear_bit (int,int ) ;
 int atomic_dec (int *) ;
 struct adapter* netdev2adap (struct net_device*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void free_tls_keyid(struct sock *sk)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);
 struct net_device *dev = csk->egress_dev;
 struct chtls_dev *cdev = csk->cdev;
 struct chtls_hws *hws;
 struct adapter *adap;

 if (!cdev->kmap.addr)
  return;

 adap = netdev2adap(dev);
 hws = &csk->tlshws;

 spin_lock_bh(&cdev->kmap.lock);
 if (hws->rxkey >= 0) {
  __clear_bit(hws->rxkey, cdev->kmap.addr);
  atomic_dec(&adap->chcr_stats.tls_key);
  hws->rxkey = -1;
 }
 if (hws->txkey >= 0) {
  __clear_bit(hws->txkey, cdev->kmap.addr);
  atomic_dec(&adap->chcr_stats.tls_key);
  hws->txkey = -1;
 }
 spin_unlock_bh(&cdev->kmap.lock);
}
