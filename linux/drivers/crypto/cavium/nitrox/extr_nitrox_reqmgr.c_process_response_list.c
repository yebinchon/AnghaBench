
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * orh; } ;
struct nitrox_softreq {void* cb_arg; int (* callback ) (void*,int) ;TYPE_2__ resp; int tstamp; int status; } ;
struct TYPE_3__ {int completed; } ;
struct nitrox_device {TYPE_1__ stats; int timeout; } ;
struct nitrox_cmdq {int pending_count; struct nitrox_device* ndev; } ;
typedef int (* completion_t ) (void*,int) ;


 int DEV (struct nitrox_device*) ;
 int READ_ONCE (int ) ;
 scalar_t__ REQ_POSTED ;
 int atomic64_inc (int *) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int cmd_timeout (int ,int ) ;
 int dev_err_ratelimited (int ,char*,int) ;
 struct nitrox_softreq* get_first_response_entry (struct nitrox_cmdq*) ;
 int response_list_del (struct nitrox_softreq*,struct nitrox_cmdq*) ;
 int smp_mb__after_atomic () ;
 int softreq_destroy (struct nitrox_softreq*) ;
 int sr_completed (struct nitrox_softreq*) ;

__attribute__((used)) static void process_response_list(struct nitrox_cmdq *cmdq)
{
 struct nitrox_device *ndev = cmdq->ndev;
 struct nitrox_softreq *sr;
 int req_completed = 0, err = 0, budget;
 completion_t callback;
 void *cb_arg;


 budget = atomic_read(&cmdq->pending_count);

 while (req_completed < budget) {
  sr = get_first_response_entry(cmdq);
  if (!sr)
   break;

  if (atomic_read(&sr->status) != REQ_POSTED)
   break;


  if (!sr_completed(sr)) {

   if (!cmd_timeout(sr->tstamp, ndev->timeout))
    break;
   dev_err_ratelimited(DEV(ndev),
         "Request timeout, orh 0x%016llx\n",
         READ_ONCE(*sr->resp.orh));
  }
  atomic_dec(&cmdq->pending_count);
  atomic64_inc(&ndev->stats.completed);

  smp_mb__after_atomic();

  response_list_del(sr, cmdq);

  err = READ_ONCE(*sr->resp.orh) & 0xff;
  callback = sr->callback;
  cb_arg = sr->cb_arg;
  softreq_destroy(sr);
  if (callback)
   callback(cb_arg, err);

  req_completed++;
 }
}
