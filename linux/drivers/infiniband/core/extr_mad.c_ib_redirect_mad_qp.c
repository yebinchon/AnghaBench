
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_qp {int dummy; } ;
struct ib_mad_agent {int dummy; } ;
typedef int ib_mad_send_handler ;
typedef int ib_mad_recv_handler ;


 int EINVAL ;
 struct ib_mad_agent* ERR_PTR (int ) ;

struct ib_mad_agent *ib_redirect_mad_qp(struct ib_qp *qp,
     u8 rmpp_version,
     ib_mad_send_handler send_handler,
     ib_mad_recv_handler recv_handler,
     void *context)
{
 return ERR_PTR(-EINVAL);
}
