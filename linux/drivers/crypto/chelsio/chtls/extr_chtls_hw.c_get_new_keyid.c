
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct chtls_hws {int rxkey; int txkey; } ;
struct chtls_sock {struct chtls_hws tlshws; struct chtls_dev* cdev; struct net_device* egress_dev; } ;
struct TYPE_4__ {int size; int lock; int addr; } ;
struct chtls_dev {TYPE_2__ kmap; } ;
struct TYPE_3__ {int tls_key; } ;
struct adapter {TYPE_1__ chcr_stats; } ;


 scalar_t__ TLS_RX ;
 int __set_bit (int,int ) ;
 int atomic_inc (int *) ;
 int find_first_zero_bit (int ,int) ;
 struct adapter* netdev2adap (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int get_new_keyid(struct chtls_sock *csk, u32 optname)
{
 struct net_device *dev = csk->egress_dev;
 struct chtls_dev *cdev = csk->cdev;
 struct chtls_hws *hws;
 struct adapter *adap;
 int keyid;

 adap = netdev2adap(dev);
 hws = &csk->tlshws;

 spin_lock_bh(&cdev->kmap.lock);
 keyid = find_first_zero_bit(cdev->kmap.addr, cdev->kmap.size);
 if (keyid < cdev->kmap.size) {
  __set_bit(keyid, cdev->kmap.addr);
  if (optname == TLS_RX)
   hws->rxkey = keyid;
  else
   hws->txkey = keyid;
  atomic_inc(&adap->chcr_stats.tls_key);
 } else {
  keyid = -1;
 }
 spin_unlock_bh(&cdev->kmap.lock);
 return keyid;
}
