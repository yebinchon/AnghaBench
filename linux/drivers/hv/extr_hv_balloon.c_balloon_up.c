
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_10__ {int size; int trans_id; int type; } ;
struct dm_balloon_response {int more_pages; int range_count; int * range_array; TYPE_3__ hdr; } ;
struct TYPE_8__ {unsigned int num_pages; } ;
struct TYPE_11__ {TYPE_2__* dev; int state; TYPE_1__ balloon_wrk; } ;
struct TYPE_9__ {int channel; } ;


 int DM_BALLOON_RESPONSE ;
 int DM_INITIALIZED ;
 int EAGAIN ;
 unsigned int PAGES_IN_2M ;
 int PAGE_SIZE ;
 int VM_PKT_DATA_INBAND ;
 int WARN_ON_ONCE (int) ;
 unsigned int alloc_balloon_pages (TYPE_4__*,unsigned int,struct dm_balloon_response*,int) ;
 int atomic_inc_return (int *) ;
 scalar_t__ balloon_up_send_buffer ;
 unsigned long compute_balloon_floor () ;
 TYPE_4__ dm_device ;
 int free_balloon_pages (TYPE_4__*,int *) ;
 int memset (scalar_t__,int ,int ) ;
 int msleep (int) ;
 int post_status (TYPE_4__*) ;
 int pr_debug (char*,unsigned int,unsigned int) ;
 int pr_err (char*) ;
 int pr_warn (char*,char*) ;
 long si_mem_available () ;
 int trans_id ;
 int vmbus_sendpacket (int ,struct dm_balloon_response*,int,unsigned long,int ,int ) ;

__attribute__((used)) static void balloon_up(struct work_struct *dummy)
{
 unsigned int num_pages = dm_device.balloon_wrk.num_pages;
 unsigned int num_ballooned = 0;
 struct dm_balloon_response *bl_resp;
 int alloc_unit;
 int ret;
 bool done = 0;
 int i;
 long avail_pages;
 unsigned long floor;


 WARN_ON_ONCE(num_pages % PAGES_IN_2M != 0);





 alloc_unit = 512;

 avail_pages = si_mem_available();
 floor = compute_balloon_floor();


 if (avail_pages < num_pages || avail_pages - num_pages < floor) {
  pr_warn("Balloon request will be partially fulfilled. %s\n",
   avail_pages < num_pages ? "Not enough memory." :
   "Balloon floor reached.");

  num_pages = avail_pages > floor ? (avail_pages - floor) : 0;
  num_pages -= num_pages % PAGES_IN_2M;
 }

 while (!done) {
  memset(balloon_up_send_buffer, 0, PAGE_SIZE);
  bl_resp = (struct dm_balloon_response *)balloon_up_send_buffer;
  bl_resp->hdr.type = DM_BALLOON_RESPONSE;
  bl_resp->hdr.size = sizeof(struct dm_balloon_response);
  bl_resp->more_pages = 1;

  num_pages -= num_ballooned;
  num_ballooned = alloc_balloon_pages(&dm_device, num_pages,
          bl_resp, alloc_unit);

  if (alloc_unit != 1 && num_ballooned == 0) {
   alloc_unit = 1;
   continue;
  }

  if (num_ballooned == 0 || num_ballooned == num_pages) {
   pr_debug("Ballooned %u out of %u requested pages.\n",
    num_pages, dm_device.balloon_wrk.num_pages);

   bl_resp->more_pages = 0;
   done = 1;
   dm_device.state = DM_INITIALIZED;
  }







  do {
   bl_resp->hdr.trans_id = atomic_inc_return(&trans_id);
   ret = vmbus_sendpacket(dm_device.dev->channel,
      bl_resp,
      bl_resp->hdr.size,
      (unsigned long)((void*)0),
      VM_PKT_DATA_INBAND, 0);

   if (ret == -EAGAIN)
    msleep(20);
   post_status(&dm_device);
  } while (ret == -EAGAIN);

  if (ret) {



   pr_err("Balloon response failed\n");

   for (i = 0; i < bl_resp->range_count; i++)
    free_balloon_pages(&dm_device,
       &bl_resp->range_array[i]);

   done = 1;
  }
 }

}
