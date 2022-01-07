
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sock {int sk_callback_lock; int sk_user_data; } ;
struct TYPE_8__ {int rx_suspend; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct siw_qp {TYPE_3__ rx_stream; int state_lock; TYPE_2__ attrs; } ;
struct TYPE_6__ {struct siw_qp* data; } ;
struct TYPE_9__ {int count; TYPE_1__ arg; } ;
typedef TYPE_4__ read_descriptor_t ;


 scalar_t__ SIW_QP_STATE_RTS ;
 scalar_t__ down_read_trylock (int *) ;
 scalar_t__ likely (int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int siw_dbg_qp (struct siw_qp*,char*,int ) ;
 int siw_tcp_rx_data ;
 struct siw_qp* sk_to_qp (struct sock*) ;
 int tcp_read_sock (struct sock*,TYPE_4__*,int ) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

void siw_qp_llp_data_ready(struct sock *sk)
{
 struct siw_qp *qp;

 read_lock(&sk->sk_callback_lock);

 if (unlikely(!sk->sk_user_data || !sk_to_qp(sk)))
  goto done;

 qp = sk_to_qp(sk);

 if (likely(!qp->rx_stream.rx_suspend &&
     down_read_trylock(&qp->state_lock))) {
  read_descriptor_t rd_desc = { .arg.data = qp, .count = 1 };

  if (likely(qp->attrs.state == SIW_QP_STATE_RTS))






   tcp_read_sock(sk, &rd_desc, siw_tcp_rx_data);

  up_read(&qp->state_lock);
 } else {
  siw_dbg_qp(qp, "unable to process RX, suspend: %d\n",
      qp->rx_stream.rx_suspend);
 }
done:
 read_unlock(&sk->sk_callback_lock);
}
