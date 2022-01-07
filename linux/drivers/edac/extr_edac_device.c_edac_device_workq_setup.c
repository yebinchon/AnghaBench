
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {unsigned int poll_msec; int delay; int work; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int edac_dbg (int ,char*) ;
 int edac_device_workq_function ;
 int edac_queue_work (int *,int ) ;
 int msecs_to_jiffies (unsigned int) ;
 int round_jiffies_relative (int ) ;

__attribute__((used)) static void edac_device_workq_setup(struct edac_device_ctl_info *edac_dev,
        unsigned msec)
{
 edac_dbg(0, "\n");





 edac_dev->poll_msec = msec;
 edac_dev->delay = msecs_to_jiffies(msec);

 INIT_DELAYED_WORK(&edac_dev->work, edac_device_workq_function);






 if (edac_dev->poll_msec == 1000)
  edac_queue_work(&edac_dev->work, round_jiffies_relative(edac_dev->delay));
 else
  edac_queue_work(&edac_dev->work, edac_dev->delay);
}
