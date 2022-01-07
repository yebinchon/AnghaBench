
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {scalar_t__ qsfp_retry_count; int start_link_work; int link_wq; int dd; } ;


 scalar_t__ MAX_QSFP_RETRIES ;
 int QSFP_RETRY_WAIT ;
 int dd_dev_err (int ,char*) ;
 int dd_dev_info (int ,char*,int) ;
 int msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int start_link (struct hfi1_pportdata*) ;
 scalar_t__ test_qsfp_read (struct hfi1_pportdata*) ;

__attribute__((used)) static void try_start_link(struct hfi1_pportdata *ppd)
{
 if (test_qsfp_read(ppd)) {

  if (ppd->qsfp_retry_count >= MAX_QSFP_RETRIES) {
   dd_dev_err(ppd->dd, "QSFP not responding, giving up\n");
   return;
  }
  dd_dev_info(ppd->dd,
       "QSFP not responding, waiting and retrying %d\n",
       (int)ppd->qsfp_retry_count);
  ppd->qsfp_retry_count++;
  queue_delayed_work(ppd->link_wq, &ppd->start_link_work,
       msecs_to_jiffies(QSFP_RETRY_WAIT));
  return;
 }
 ppd->qsfp_retry_count = 0;

 start_link(ppd);
}
