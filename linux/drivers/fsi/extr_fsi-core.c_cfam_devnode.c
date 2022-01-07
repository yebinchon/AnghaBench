
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct fsi_slave {int cdev_idx; } ;
struct device {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ) ;
 struct fsi_slave* to_fsi_slave (struct device*) ;

__attribute__((used)) static char *cfam_devnode(struct device *dev, umode_t *mode,
     kuid_t *uid, kgid_t *gid)
{
 struct fsi_slave *slave = to_fsi_slave(dev);




 return kasprintf(GFP_KERNEL, "cfam%d", slave->cdev_idx);

}
