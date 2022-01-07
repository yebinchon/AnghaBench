
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ib_sa_query {int list; scalar_t__ timeout; scalar_t__ seq; } ;
typedef int gfp_t ;
struct TYPE_3__ {int * next; } ;


 int EIO ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 TYPE_1__ ib_nl_request_list ;
 int ib_nl_request_lock ;
 int ib_nl_sa_request_seq ;
 int ib_nl_send_msg (struct ib_sa_query*,int ) ;
 int ib_nl_timed_work ;
 int ib_nl_wq ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,TYPE_1__*) ;
 int list_del (int *) ;
 unsigned long msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int sa_local_svc_timeout_ms ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ib_nl_make_request(struct ib_sa_query *query, gfp_t gfp_mask)
{
 unsigned long flags;
 unsigned long delay;
 int ret;

 INIT_LIST_HEAD(&query->list);
 query->seq = (u32)atomic_inc_return(&ib_nl_sa_request_seq);


 spin_lock_irqsave(&ib_nl_request_lock, flags);
 delay = msecs_to_jiffies(sa_local_svc_timeout_ms);
 query->timeout = delay + jiffies;
 list_add_tail(&query->list, &ib_nl_request_list);

 if (ib_nl_request_list.next == &query->list)
  queue_delayed_work(ib_nl_wq, &ib_nl_timed_work, delay);
 spin_unlock_irqrestore(&ib_nl_request_lock, flags);

 ret = ib_nl_send_msg(query, gfp_mask);
 if (ret) {
  ret = -EIO;

  spin_lock_irqsave(&ib_nl_request_lock, flags);
  list_del(&query->list);
  spin_unlock_irqrestore(&ib_nl_request_lock, flags);
 }

 return ret;
}
