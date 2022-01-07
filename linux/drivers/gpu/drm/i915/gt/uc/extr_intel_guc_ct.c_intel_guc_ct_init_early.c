
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owner; } ;
struct intel_guc_ct {int worker; int incoming_requests; int pending_requests; int lock; TYPE_1__ host_channel; } ;


 int CTB_OWNER_HOST ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int ct_incoming_request_worker_func ;
 int spin_lock_init (int *) ;

void intel_guc_ct_init_early(struct intel_guc_ct *ct)
{

 ct->host_channel.owner = CTB_OWNER_HOST;

 spin_lock_init(&ct->lock);
 INIT_LIST_HEAD(&ct->pending_requests);
 INIT_LIST_HEAD(&ct->incoming_requests);
 INIT_WORK(&ct->worker, ct_incoming_request_worker_func);
}
