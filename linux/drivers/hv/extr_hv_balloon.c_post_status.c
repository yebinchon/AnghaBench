
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hv_dynmem_device {scalar_t__ num_pages_added; scalar_t__ num_pages_onlined; TYPE_2__* dev; scalar_t__ num_pages_ballooned; } ;
struct TYPE_3__ {int size; scalar_t__ trans_id; int type; } ;
struct dm_status {TYPE_1__ hdr; scalar_t__ num_committed; int num_avail; } ;
struct TYPE_4__ {int channel; } ;


 int DM_STATUS_REPORT ;
 scalar_t__ HZ ;
 int VM_PKT_DATA_INBAND ;
 scalar_t__ atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ compute_balloon_floor () ;
 unsigned long jiffies ;
 unsigned long last_post_time ;
 int memset (struct dm_status*,int ,int) ;
 scalar_t__ pressure_report_delay ;
 int si_mem_available () ;
 int time_after (unsigned long,scalar_t__) ;
 int trace_balloon_status (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int trans_id ;
 scalar_t__ vm_memory_committed () ;
 int vmbus_sendpacket (int ,struct dm_status*,int,unsigned long,int ,int ) ;

__attribute__((used)) static void post_status(struct hv_dynmem_device *dm)
{
 struct dm_status status;
 unsigned long now = jiffies;
 unsigned long last_post = last_post_time;

 if (pressure_report_delay > 0) {
  --pressure_report_delay;
  return;
 }

 if (!time_after(now, (last_post_time + HZ)))
  return;

 memset(&status, 0, sizeof(struct dm_status));
 status.hdr.type = DM_STATUS_REPORT;
 status.hdr.size = sizeof(struct dm_status);
 status.hdr.trans_id = atomic_inc_return(&trans_id);
 status.num_avail = si_mem_available();
 status.num_committed = vm_memory_committed() +
  dm->num_pages_ballooned +
  (dm->num_pages_added > dm->num_pages_onlined ?
   dm->num_pages_added - dm->num_pages_onlined : 0) +
  compute_balloon_floor();

 trace_balloon_status(status.num_avail, status.num_committed,
        vm_memory_committed(), dm->num_pages_ballooned,
        dm->num_pages_added, dm->num_pages_onlined);





 if (status.hdr.trans_id != atomic_read(&trans_id))
  return;





 if (last_post != last_post_time)
  return;

 last_post_time = jiffies;
 vmbus_sendpacket(dm->dev->channel, &status,
    sizeof(struct dm_status),
    (unsigned long)((void*)0),
    VM_PKT_DATA_INBAND, 0);

}
