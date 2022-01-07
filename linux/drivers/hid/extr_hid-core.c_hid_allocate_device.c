
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bus; int release; } ;
struct hid_device {int ll_open_lock; int driver_input_lock; int debug_list_lock; int debug_list; int debug_wait; TYPE_1__ dev; } ;


 int ENOMEM ;
 struct hid_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int device_enable_async_suspend (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int hid_bus_type ;
 int hid_close_report (struct hid_device*) ;
 int hid_device_release ;
 int init_waitqueue_head (int *) ;
 struct hid_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sema_init (int *,int) ;
 int spin_lock_init (int *) ;

struct hid_device *hid_allocate_device(void)
{
 struct hid_device *hdev;
 int ret = -ENOMEM;

 hdev = kzalloc(sizeof(*hdev), GFP_KERNEL);
 if (hdev == ((void*)0))
  return ERR_PTR(ret);

 device_initialize(&hdev->dev);
 hdev->dev.release = hid_device_release;
 hdev->dev.bus = &hid_bus_type;
 device_enable_async_suspend(&hdev->dev);

 hid_close_report(hdev);

 init_waitqueue_head(&hdev->debug_wait);
 INIT_LIST_HEAD(&hdev->debug_list);
 spin_lock_init(&hdev->debug_list_lock);
 sema_init(&hdev->driver_input_lock, 1);
 mutex_init(&hdev->ll_open_lock);

 return hdev;
}
