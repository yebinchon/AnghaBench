
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hv_vmbus_device_id {int dummy; } ;
struct hv_device {int channel; } ;
struct TYPE_7__ {int wrk; } ;
struct TYPE_6__ {int wrk; } ;
struct TYPE_8__ {int host_specified_ha_region; int thread; int state; TYPE_2__ ha_wrk; TYPE_1__ balloon_wrk; int ha_lock; int ha_region_list; int config_event; int host_event; int next_version; struct hv_device* dev; } ;


 int DM_INITIALIZED ;
 int DM_INITIALIZING ;
 int DYNMEM_PROTOCOL_VERSION_WIN8 ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int balloon_connect_vsp (struct hv_device*) ;
 int balloon_up ;
 TYPE_3__ dm_device ;
 int dm_thread_func ;
 int do_hot_add ;
 int hot_add ;
 int hot_add_req ;
 int hv_memory_nb ;
 int hv_online_page ;
 int hv_set_drvdata (struct hv_device*,TYPE_3__*) ;
 int init_completion (int *) ;
 int kthread_run (int ,TYPE_3__*,char*) ;
 int register_memory_notifier (int *) ;
 int restore_online_page_callback (int *) ;
 int set_online_page_callback (int *) ;
 int spin_lock_init (int *) ;
 int unregister_memory_notifier (int *) ;
 int vmbus_close (int ) ;

__attribute__((used)) static int balloon_probe(struct hv_device *dev,
    const struct hv_vmbus_device_id *dev_id)
{
 int ret;




 do_hot_add = 0;

 dm_device.dev = dev;
 dm_device.state = DM_INITIALIZING;
 dm_device.next_version = DYNMEM_PROTOCOL_VERSION_WIN8;
 init_completion(&dm_device.host_event);
 init_completion(&dm_device.config_event);
 INIT_LIST_HEAD(&dm_device.ha_region_list);
 spin_lock_init(&dm_device.ha_lock);
 INIT_WORK(&dm_device.balloon_wrk.wrk, balloon_up);
 INIT_WORK(&dm_device.ha_wrk.wrk, hot_add_req);
 dm_device.host_specified_ha_region = 0;






 hv_set_drvdata(dev, &dm_device);

 ret = balloon_connect_vsp(dev);
 if (ret != 0)
  return ret;

 dm_device.state = DM_INITIALIZED;

 dm_device.thread =
   kthread_run(dm_thread_func, &dm_device, "hv_balloon");
 if (IS_ERR(dm_device.thread)) {
  ret = PTR_ERR(dm_device.thread);
  goto probe_error;
 }

 return 0;

probe_error:
 vmbus_close(dev->channel);




 return ret;
}
