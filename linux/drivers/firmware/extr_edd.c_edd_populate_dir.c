
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edd_device {int kobj; } ;
struct edd_attribute {int attr; scalar_t__ (* test ) (struct edd_device*) ;} ;


 struct edd_attribute** edd_attrs ;
 int edd_create_symlink_to_pcidev (struct edd_device*) ;
 scalar_t__ stub1 (struct edd_device*) ;
 int sysfs_create_file (int *,int *) ;

__attribute__((used)) static void edd_populate_dir(struct edd_device * edev)
{
 struct edd_attribute * attr;
 int error = 0;
 int i;

 for (i = 0; (attr = edd_attrs[i]) && !error; i++) {
  if (!attr->test ||
      (attr->test && attr->test(edev)))
   error = sysfs_create_file(&edev->kobj,&attr->attr);
 }

 if (!error) {
  edd_create_symlink_to_pcidev(edev);
 }
}
