
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct device {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int GFP_KERNEL ;
 int dev_name (struct device*) ;
 char* kasprintf (int ,char*,int ) ;

__attribute__((used)) static char *fsi_cdev_devnode(struct device *dev, umode_t *mode,
         kuid_t *uid, kgid_t *gid)
{



 return kasprintf(GFP_KERNEL, "%s", dev_name(dev));

}
