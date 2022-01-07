
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_family; } ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct listen_ctx {int synq; int state; struct chtls_dev* cdev; struct sock* lsk; } ;
struct chtls_dev {int tids; TYPE_1__* lldi; } ;
struct adapter {int flags; } ;
struct TYPE_4__ {int inet_sport; int inet_rcv_saddr; } ;
struct TYPE_3__ {int * rxq_ids; } ;


 int CXGB4_FULL_INIT_DONE ;
 int EADDRINUSE ;
 int EAGAIN ;
 int EBADF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PF_INET ;
 int T4_LISTEN_START_PENDING ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 struct net_device* chtls_ipv4_netdev (struct chtls_dev*,struct sock*) ;
 int cxgb4_alloc_stid (int ,scalar_t__,struct listen_ctx*) ;
 int cxgb4_create_server (struct net_device*,int,int ,int ,int ,int ) ;
 int cxgb4_free_stid (int ,int,scalar_t__) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int kfree (struct listen_ctx*) ;
 struct listen_ctx* kmalloc (int,int ) ;
 int listen_hash_add (struct chtls_dev*,struct sock*,int) ;
 int listen_hash_del (struct chtls_dev*,struct sock*) ;
 scalar_t__ listen_hash_find (struct chtls_dev*,struct sock*) ;
 int module_put (int ) ;
 int net_xmit_errno (int) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_queue_head_init (int *) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

int chtls_listen_start(struct chtls_dev *cdev, struct sock *sk)
{
 struct net_device *ndev;
 struct listen_ctx *ctx;
 struct adapter *adap;
 struct port_info *pi;
 int stid;
 int ret;

 if (sk->sk_family != PF_INET)
  return -EAGAIN;

 rcu_read_lock();
 ndev = chtls_ipv4_netdev(cdev, sk);
 rcu_read_unlock();
 if (!ndev)
  return -EBADF;

 pi = netdev_priv(ndev);
 adap = pi->adapter;
 if (!(adap->flags & CXGB4_FULL_INIT_DONE))
  return -EBADF;

 if (listen_hash_find(cdev, sk) >= 0)
  return -EADDRINUSE;

 ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 __module_get(THIS_MODULE);
 ctx->lsk = sk;
 ctx->cdev = cdev;
 ctx->state = T4_LISTEN_START_PENDING;
 skb_queue_head_init(&ctx->synq);

 stid = cxgb4_alloc_stid(cdev->tids, sk->sk_family, ctx);
 if (stid < 0)
  goto free_ctx;

 sock_hold(sk);
 if (!listen_hash_add(cdev, sk, stid))
  goto free_stid;

 ret = cxgb4_create_server(ndev, stid,
      inet_sk(sk)->inet_rcv_saddr,
      inet_sk(sk)->inet_sport, 0,
      cdev->lldi->rxq_ids[0]);
 if (ret > 0)
  ret = net_xmit_errno(ret);
 if (ret)
  goto del_hash;
 return 0;
del_hash:
 listen_hash_del(cdev, sk);
free_stid:
 cxgb4_free_stid(cdev->tids, stid, sk->sk_family);
 sock_put(sk);
free_ctx:
 kfree(ctx);
 module_put(THIS_MODULE);
 return -EBADF;
}
