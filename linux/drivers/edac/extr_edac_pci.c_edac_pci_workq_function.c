
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct edac_pci_ctl_info {scalar_t__ op_state; int work; int (* edac_check ) (struct edac_pci_ctl_info*) ;} ;
struct delayed_work {int dummy; } ;


 scalar_t__ OP_RUNNING_POLL ;
 int edac_dbg (int,char*) ;
 int edac_pci_ctls_mutex ;
 scalar_t__ edac_pci_get_check_errors () ;
 int edac_pci_get_poll_msec () ;
 int edac_queue_work (int *,unsigned long) ;
 unsigned long msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long round_jiffies_relative (unsigned long) ;
 int stub1 (struct edac_pci_ctl_info*) ;
 struct delayed_work* to_delayed_work (struct work_struct*) ;
 struct edac_pci_ctl_info* to_edac_pci_ctl_work (struct delayed_work*) ;

__attribute__((used)) static void edac_pci_workq_function(struct work_struct *work_req)
{
 struct delayed_work *d_work = to_delayed_work(work_req);
 struct edac_pci_ctl_info *pci = to_edac_pci_ctl_work(d_work);
 int msec;
 unsigned long delay;

 edac_dbg(3, "checking\n");

 mutex_lock(&edac_pci_ctls_mutex);

 if (pci->op_state != OP_RUNNING_POLL) {
  mutex_unlock(&edac_pci_ctls_mutex);
  return;
 }

 if (edac_pci_get_check_errors())
  pci->edac_check(pci);


 msec = edac_pci_get_poll_msec();
 if (msec == 1000)
  delay = round_jiffies_relative(msecs_to_jiffies(msec));
 else
  delay = msecs_to_jiffies(msec);

 edac_queue_work(&pci->work, delay);

 mutex_unlock(&edac_pci_ctls_mutex);
}
