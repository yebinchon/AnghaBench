
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** monitor_pages; int * int_page; scalar_t__ work_queue; scalar_t__ handle_primary_chan_wq; scalar_t__ handle_sub_chan_wq; } ;


 int destroy_workqueue (scalar_t__) ;
 int free_pages (unsigned long,int ) ;
 TYPE_1__ vmbus_connection ;
 int vmbus_initiate_unload (int) ;

void vmbus_disconnect(void)
{



 vmbus_initiate_unload(0);

 if (vmbus_connection.handle_sub_chan_wq)
  destroy_workqueue(vmbus_connection.handle_sub_chan_wq);

 if (vmbus_connection.handle_primary_chan_wq)
  destroy_workqueue(vmbus_connection.handle_primary_chan_wq);

 if (vmbus_connection.work_queue)
  destroy_workqueue(vmbus_connection.work_queue);

 if (vmbus_connection.int_page) {
  free_pages((unsigned long)vmbus_connection.int_page, 0);
  vmbus_connection.int_page = ((void*)0);
 }

 free_pages((unsigned long)vmbus_connection.monitor_pages[0], 0);
 free_pages((unsigned long)vmbus_connection.monitor_pages[1], 0);
 vmbus_connection.monitor_pages[0] = ((void*)0);
 vmbus_connection.monitor_pages[1] = ((void*)0);
}
