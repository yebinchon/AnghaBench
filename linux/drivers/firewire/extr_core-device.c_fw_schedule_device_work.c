
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_device {int work; } ;


 int fw_workqueue ;
 int queue_delayed_work (int ,int *,unsigned long) ;

__attribute__((used)) static void fw_schedule_device_work(struct fw_device *device,
        unsigned long delay)
{
 queue_delayed_work(fw_workqueue, &device->work, delay);
}
