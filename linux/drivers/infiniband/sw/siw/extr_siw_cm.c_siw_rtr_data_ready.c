
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sock {int sk_callback_lock; } ;
struct TYPE_7__ {int rx_suspend; } ;
struct siw_qp {TYPE_2__ rx_stream; } ;
struct siw_cep {int dummy; } ;
struct TYPE_6__ {struct siw_qp* data; } ;
struct TYPE_8__ {int count; TYPE_1__ arg; } ;
typedef TYPE_3__ read_descriptor_t ;
typedef int rd_desc ;


 int IW_CM_EVENT_ESTABLISHED ;
 int WARN (int,char*) ;
 int memset (TYPE_3__*,int ,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int siw_cm_upcall (struct siw_cep*,int ,int ) ;
 int siw_qp_socket_assoc (struct siw_cep*,struct siw_qp*) ;
 int siw_tcp_rx_data ;
 struct siw_cep* sk_to_cep (struct sock*) ;
 struct siw_qp* sk_to_qp (struct sock*) ;
 int tcp_read_sock (struct sock*,TYPE_3__*,int ) ;

__attribute__((used)) static void siw_rtr_data_ready(struct sock *sk)
{
 struct siw_cep *cep;
 struct siw_qp *qp = ((void*)0);
 read_descriptor_t rd_desc;

 read_lock(&sk->sk_callback_lock);

 cep = sk_to_cep(sk);
 if (!cep) {
  WARN(1, "No connection endpoint\n");
  goto out;
 }
 qp = sk_to_qp(sk);

 memset(&rd_desc, 0, sizeof(rd_desc));
 rd_desc.arg.data = qp;
 rd_desc.count = 1;

 tcp_read_sock(sk, &rd_desc, siw_tcp_rx_data);






 if (!qp->rx_stream.rx_suspend)
  siw_cm_upcall(cep, IW_CM_EVENT_ESTABLISHED, 0);
out:
 read_unlock(&sk->sk_callback_lock);
 if (qp)
  siw_qp_socket_assoc(cep, qp);
}
