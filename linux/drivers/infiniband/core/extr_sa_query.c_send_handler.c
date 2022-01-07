
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_sa_query {int (* release ) (struct ib_sa_query*) ;scalar_t__ client; int id; int (* callback ) (struct ib_sa_query*,int ,int *) ;} ;
struct ib_mad_send_wc {int status; TYPE_1__* send_buf; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {struct ib_sa_query** context; } ;


 int EINTR ;
 int EIO ;
 int ETIMEDOUT ;



 int __xa_erase (int *,int ) ;
 int free_mad (struct ib_sa_query*) ;
 int ib_sa_client_put (scalar_t__) ;
 int queries ;
 int stub1 (struct ib_sa_query*,int ,int *) ;
 int stub2 (struct ib_sa_query*,int ,int *) ;
 int stub3 (struct ib_sa_query*,int ,int *) ;
 int stub4 (struct ib_sa_query*) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void send_handler(struct ib_mad_agent *agent,
    struct ib_mad_send_wc *mad_send_wc)
{
 struct ib_sa_query *query = mad_send_wc->send_buf->context[0];
 unsigned long flags;

 if (query->callback)
  switch (mad_send_wc->status) {
  case 129:

   break;
  case 130:
   query->callback(query, -ETIMEDOUT, ((void*)0));
   break;
  case 128:
   query->callback(query, -EINTR, ((void*)0));
   break;
  default:
   query->callback(query, -EIO, ((void*)0));
   break;
  }

 xa_lock_irqsave(&queries, flags);
 __xa_erase(&queries, query->id);
 xa_unlock_irqrestore(&queries, flags);

 free_mad(query);
 if (query->client)
  ib_sa_client_put(query->client);
 query->release(query);
}
