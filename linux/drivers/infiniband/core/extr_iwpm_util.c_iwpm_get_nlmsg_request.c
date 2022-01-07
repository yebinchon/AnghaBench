
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwpm_nlmsg_request {int sem; scalar_t__ err_code; scalar_t__ request_done; int nl_client; int nlmsg_seq; int kref; int inprocess_list; } ;
typedef int gfp_t ;
typedef int __u32 ;


 int down (int *) ;
 int iwpm_nlmsg_req_list ;
 int iwpm_nlmsg_req_lock ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct iwpm_nlmsg_request* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sema_init (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct iwpm_nlmsg_request *iwpm_get_nlmsg_request(__u32 nlmsg_seq,
     u8 nl_client, gfp_t gfp)
{
 struct iwpm_nlmsg_request *nlmsg_request = ((void*)0);
 unsigned long flags;

 nlmsg_request = kzalloc(sizeof(struct iwpm_nlmsg_request), gfp);
 if (!nlmsg_request)
  return ((void*)0);

 spin_lock_irqsave(&iwpm_nlmsg_req_lock, flags);
 list_add_tail(&nlmsg_request->inprocess_list, &iwpm_nlmsg_req_list);
 spin_unlock_irqrestore(&iwpm_nlmsg_req_lock, flags);

 kref_init(&nlmsg_request->kref);
 kref_get(&nlmsg_request->kref);
 nlmsg_request->nlmsg_seq = nlmsg_seq;
 nlmsg_request->nl_client = nl_client;
 nlmsg_request->request_done = 0;
 nlmsg_request->err_code = 0;
 sema_init(&nlmsg_request->sem, 1);
 down(&nlmsg_request->sem);
 return nlmsg_request;
}
