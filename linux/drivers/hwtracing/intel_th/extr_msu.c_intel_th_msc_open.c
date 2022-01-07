
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_iter {int dev; } ;
struct msc {int dummy; } ;
struct intel_th_device {int dev; } ;
struct inode {int dummy; } ;
struct file {struct msc_iter* private_data; } ;


 int CAP_SYS_RAWIO ;
 int EPERM ;
 scalar_t__ IS_ERR (struct msc_iter*) ;
 int PTR_ERR (struct msc_iter*) ;
 int capable (int ) ;
 struct msc* dev_get_drvdata (int *) ;
 struct msc_iter* msc_iter_install (struct msc*) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int intel_th_msc_open(struct inode *inode, struct file *file)
{
 struct intel_th_device *thdev = file->private_data;
 struct msc *msc = dev_get_drvdata(&thdev->dev);
 struct msc_iter *iter;

 if (!capable(CAP_SYS_RAWIO))
  return -EPERM;

 iter = msc_iter_install(msc);
 if (IS_ERR(iter))
  return PTR_ERR(iter);

 file->private_data = iter;

 return nonseekable_open(inode, file);
}
