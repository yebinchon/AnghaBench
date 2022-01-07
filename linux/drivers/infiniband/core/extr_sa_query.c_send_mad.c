
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_sa_query {int id; int flags; TYPE_1__* mad_buf; } ;
typedef int gfp_t ;
struct TYPE_2__ {unsigned long timeout_ms; struct ib_sa_query** context; } ;


 int IB_SA_ENABLE_LOCAL_SERVICE ;
 int IB_SA_QUERY_OPA ;
 int RDMA_NL_GROUP_LS ;
 int __xa_alloc (int *,int*,struct ib_sa_query*,int ,int ) ;
 int __xa_erase (int *,int) ;
 int ib_nl_make_request (struct ib_sa_query*,int ) ;
 int ib_post_send_mad (TYPE_1__*,int *) ;
 int ib_sa_disable_local_svc (struct ib_sa_query*) ;
 int queries ;
 scalar_t__ rdma_nl_chk_listeners (int ) ;
 int xa_limit_32b ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int send_mad(struct ib_sa_query *query, unsigned long timeout_ms,
      gfp_t gfp_mask)
{
 unsigned long flags;
 int ret, id;

 xa_lock_irqsave(&queries, flags);
 ret = __xa_alloc(&queries, &id, query, xa_limit_32b, gfp_mask);
 xa_unlock_irqrestore(&queries, flags);
 if (ret < 0)
  return ret;

 query->mad_buf->timeout_ms = timeout_ms;
 query->mad_buf->context[0] = query;
 query->id = id;

 if ((query->flags & IB_SA_ENABLE_LOCAL_SERVICE) &&
     (!(query->flags & IB_SA_QUERY_OPA))) {
  if (rdma_nl_chk_listeners(RDMA_NL_GROUP_LS)) {
   if (!ib_nl_make_request(query, gfp_mask))
    return id;
  }
  ib_sa_disable_local_svc(query);
 }

 ret = ib_post_send_mad(query->mad_buf, ((void*)0));
 if (ret) {
  xa_lock_irqsave(&queries, flags);
  __xa_erase(&queries, id);
  xa_unlock_irqrestore(&queries, flags);
 }






 return ret ? ret : id;
}
