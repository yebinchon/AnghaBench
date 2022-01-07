
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int nr_instances; } ;


 int edac_device_delete_instance (struct edac_device_ctl_info*,int) ;

__attribute__((used)) static void edac_device_delete_instances(struct edac_device_ctl_info *edac_dev)
{
 int i;


 for (i = 0; i < edac_dev->nr_instances; i++)
  edac_device_delete_instance(edac_dev, i);
}
