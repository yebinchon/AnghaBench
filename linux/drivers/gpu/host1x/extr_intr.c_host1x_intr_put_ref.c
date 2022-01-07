
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_waitlist {int refcount; int state; } ;
struct host1x_syncpt {int dummy; } ;
struct host1x {struct host1x_syncpt* syncpt; } ;


 int WLS_CANCELLED ;
 int WLS_PENDING ;
 scalar_t__ WLS_REMOVED ;
 scalar_t__ atomic_cmpxchg (int *,int ,int ) ;
 int host1x_syncpt_load (struct host1x_syncpt*) ;
 int kref_put (int *,int ) ;
 int process_wait_list (struct host1x*,struct host1x_syncpt*,int ) ;
 int schedule () ;
 int waiter_release ;

void host1x_intr_put_ref(struct host1x *host, unsigned int id, void *ref)
{
 struct host1x_waitlist *waiter = ref;
 struct host1x_syncpt *syncpt;

 while (atomic_cmpxchg(&waiter->state, WLS_PENDING, WLS_CANCELLED) ==
        WLS_REMOVED)
  schedule();

 syncpt = host->syncpt + id;
 (void)process_wait_list(host, syncpt,
    host1x_syncpt_load(host->syncpt + id));

 kref_put(&waiter->refcount, waiter_release);
}
