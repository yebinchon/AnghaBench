
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mem_ctl_info {int nr_csrows; int tot_dimms; scalar_t__ mod_name; int op_state; int dev_name; int ctl_name; int work; scalar_t__ edac_check; int bus; int start_time; TYPE_2__** dimms; struct csrow_info** csrows; } ;
struct csrow_info {int nr_channels; TYPE_3__** channels; } ;
struct attribute_group {int dummy; } ;
struct TYPE_6__ {TYPE_1__* dimm; } ;
struct TYPE_5__ {scalar_t__ nr_pages; } ;
struct TYPE_4__ {scalar_t__ nr_pages; } ;


 int EINVAL ;
 int EPERM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int OP_RUNNING_INTERRUPT ;
 int OP_RUNNING_POLL ;
 scalar_t__ add_mc_to_global_list (struct mem_ctl_info*) ;
 int del_mc_from_global_list (struct mem_ctl_info*) ;
 scalar_t__ edac_create_sysfs_mci_device (struct mem_ctl_info*,struct attribute_group const**) ;
 int edac_dbg (int ,char*) ;
 int edac_debug_level ;
 int edac_get_sysfs_subsys () ;
 int edac_mc_dump_channel (TYPE_3__*) ;
 int edac_mc_dump_csrow (struct csrow_info*) ;
 int edac_mc_dump_dimm (TYPE_2__*,int) ;
 int edac_mc_dump_mci (struct mem_ctl_info*) ;
 int edac_mc_get_poll_msec () ;
 scalar_t__ edac_mc_owner ;
 int edac_mc_printk (struct mem_ctl_info*,int ,char*,...) ;
 int edac_mc_workq_function ;
 int edac_op_state_to_string (int ) ;
 int edac_queue_work (int *,int ) ;
 int jiffies ;
 int mem_ctls_mutex ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int edac_mc_add_mc_with_groups(struct mem_ctl_info *mci,
          const struct attribute_group **groups)
{
 int ret = -EINVAL;
 edac_dbg(0, "\n");
 mutex_lock(&mem_ctls_mutex);

 if (edac_mc_owner && edac_mc_owner != mci->mod_name) {
  ret = -EPERM;
  goto fail0;
 }

 if (add_mc_to_global_list(mci))
  goto fail0;


 mci->start_time = jiffies;

 mci->bus = edac_get_sysfs_subsys();

 if (edac_create_sysfs_mci_device(mci, groups)) {
  edac_mc_printk(mci, KERN_WARNING,
   "failed to create sysfs device\n");
  goto fail1;
 }

 if (mci->edac_check) {
  mci->op_state = OP_RUNNING_POLL;

  INIT_DELAYED_WORK(&mci->work, edac_mc_workq_function);
  edac_queue_work(&mci->work, msecs_to_jiffies(edac_mc_get_poll_msec()));

 } else {
  mci->op_state = OP_RUNNING_INTERRUPT;
 }


 edac_mc_printk(mci, KERN_INFO,
  "Giving out device to module %s controller %s: DEV %s (%s)\n",
  mci->mod_name, mci->ctl_name, mci->dev_name,
  edac_op_state_to_string(mci->op_state));

 edac_mc_owner = mci->mod_name;

 mutex_unlock(&mem_ctls_mutex);
 return 0;

fail1:
 del_mc_from_global_list(mci);

fail0:
 mutex_unlock(&mem_ctls_mutex);
 return ret;
}
