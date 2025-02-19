
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_2__ {int ctrl; } ;
struct siw_iwarp_tx {int ctrl_sent; scalar_t__ ctrl_len; TYPE_1__ pkt; } ;
struct msghdr {int msg_flags; } ;
struct kvec {char* iov_base; scalar_t__ iov_len; } ;


 int EAGAIN ;
 int kernel_sendmsg (struct socket*,struct msghdr*,struct kvec*,int,scalar_t__) ;

__attribute__((used)) static int siw_tx_ctrl(struct siw_iwarp_tx *c_tx, struct socket *s,
         int flags)
{
 struct msghdr msg = { .msg_flags = flags };
 struct kvec iov = { .iov_base =
        (char *)&c_tx->pkt.ctrl + c_tx->ctrl_sent,
       .iov_len = c_tx->ctrl_len - c_tx->ctrl_sent };

 int rv = kernel_sendmsg(s, &msg, &iov, 1,
    c_tx->ctrl_len - c_tx->ctrl_sent);

 if (rv >= 0) {
  c_tx->ctrl_sent += rv;

  if (c_tx->ctrl_sent == c_tx->ctrl_len)
   rv = 0;
  else
   rv = -EAGAIN;
 }
 return rv;
}
