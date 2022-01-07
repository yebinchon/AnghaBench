
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel_msginfo {int dummy; } ;
struct vmbus_channel_initiate_contact {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {scalar_t__ conn_state; int ** monitor_pages; int * int_page; void* send_int_page; int * recv_int_page; int channel_mutex; int chn_list; int channelmsg_lock; int chn_msg_list; void* handle_sub_chan_wq; void* handle_primary_chan_wq; void* work_queue; } ;


 scalar_t__ CONNECTED ;
 scalar_t__ CONNECTING ;
 scalar_t__ DISCONNECTED ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int VERSION_CURRENT ;
 int VERSION_INVAL ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 void* create_workqueue (char*) ;
 int kfree (struct vmbus_channel_msginfo*) ;
 struct vmbus_channel_msginfo* kzalloc (int,int) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int pr_info (char*,int,int) ;
 int spin_lock_init (int *) ;
 TYPE_1__ vmbus_connection ;
 int vmbus_disconnect () ;
 int vmbus_get_next_version (int) ;
 int vmbus_negotiate_version (struct vmbus_channel_msginfo*,int) ;
 int vmbus_proto_version ;

int vmbus_connect(void)
{
 int ret = 0;
 struct vmbus_channel_msginfo *msginfo = ((void*)0);
 __u32 version;


 vmbus_connection.conn_state = CONNECTING;
 vmbus_connection.work_queue = create_workqueue("hv_vmbus_con");
 if (!vmbus_connection.work_queue) {
  ret = -ENOMEM;
  goto cleanup;
 }

 vmbus_connection.handle_primary_chan_wq =
  create_workqueue("hv_pri_chan");
 if (!vmbus_connection.handle_primary_chan_wq) {
  ret = -ENOMEM;
  goto cleanup;
 }

 vmbus_connection.handle_sub_chan_wq =
  create_workqueue("hv_sub_chan");
 if (!vmbus_connection.handle_sub_chan_wq) {
  ret = -ENOMEM;
  goto cleanup;
 }

 INIT_LIST_HEAD(&vmbus_connection.chn_msg_list);
 spin_lock_init(&vmbus_connection.channelmsg_lock);

 INIT_LIST_HEAD(&vmbus_connection.chn_list);
 mutex_init(&vmbus_connection.channel_mutex);





 vmbus_connection.int_page =
 (void *)__get_free_pages(GFP_KERNEL|__GFP_ZERO, 0);
 if (vmbus_connection.int_page == ((void*)0)) {
  ret = -ENOMEM;
  goto cleanup;
 }

 vmbus_connection.recv_int_page = vmbus_connection.int_page;
 vmbus_connection.send_int_page =
  (void *)((unsigned long)vmbus_connection.int_page +
   (PAGE_SIZE >> 1));





 vmbus_connection.monitor_pages[0] = (void *)__get_free_pages((GFP_KERNEL|__GFP_ZERO), 0);
 vmbus_connection.monitor_pages[1] = (void *)__get_free_pages((GFP_KERNEL|__GFP_ZERO), 0);
 if ((vmbus_connection.monitor_pages[0] == ((void*)0)) ||
     (vmbus_connection.monitor_pages[1] == ((void*)0))) {
  ret = -ENOMEM;
  goto cleanup;
 }

 msginfo = kzalloc(sizeof(*msginfo) +
     sizeof(struct vmbus_channel_initiate_contact),
     GFP_KERNEL);
 if (msginfo == ((void*)0)) {
  ret = -ENOMEM;
  goto cleanup;
 }
 version = VERSION_CURRENT;

 do {
  ret = vmbus_negotiate_version(msginfo, version);
  if (ret == -ETIMEDOUT)
   goto cleanup;

  if (vmbus_connection.conn_state == CONNECTED)
   break;

  version = vmbus_get_next_version(version);
 } while (version != VERSION_INVAL);

 if (version == VERSION_INVAL)
  goto cleanup;

 vmbus_proto_version = version;
 pr_info("Vmbus version:%d.%d\n",
  version >> 16, version & 0xFFFF);

 kfree(msginfo);
 return 0;

cleanup:
 pr_err("Unable to connect to host\n");

 vmbus_connection.conn_state = DISCONNECTED;
 vmbus_disconnect();

 kfree(msginfo);

 return ret;
}
