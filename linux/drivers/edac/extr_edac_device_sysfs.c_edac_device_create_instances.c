
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int nr_instances; } ;


 int edac_dbg (int ,char*) ;
 int edac_device_create_instance (struct edac_device_ctl_info*,int) ;
 int edac_device_delete_instance (struct edac_device_ctl_info*,int) ;

__attribute__((used)) static int edac_device_create_instances(struct edac_device_ctl_info *edac_dev)
{
 int i, j;
 int err;

 edac_dbg(0, "\n");


 for (i = 0; i < edac_dev->nr_instances; i++) {
  err = edac_device_create_instance(edac_dev, i);
  if (err) {

   for (j = 0; j < i; j++)
    edac_device_delete_instance(edac_dev, j);
   return err;
  }
 }

 return 0;
}
