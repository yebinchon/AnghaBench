
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_instance {int nr_blocks; int kobj; int * blocks; } ;
struct edac_device_ctl_info {struct edac_device_instance* instances; } ;


 int edac_device_delete_block (struct edac_device_ctl_info*,int *) ;
 int kobject_put (int *) ;

__attribute__((used)) static void edac_device_delete_instance(struct edac_device_ctl_info *edac_dev,
     int idx)
{
 struct edac_device_instance *instance;
 int i;

 instance = &edac_dev->instances[idx];


 for (i = 0; i < instance->nr_blocks; i++)
  edac_device_delete_block(edac_dev, &instance->blocks[i]);




 kobject_put(&instance->kobj);
}
