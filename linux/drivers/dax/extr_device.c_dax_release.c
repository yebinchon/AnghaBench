
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct dev_dax* private_data; } ;
struct dev_dax {int dev; } ;


 int dev_dbg (int *,char*) ;

__attribute__((used)) static int dax_release(struct inode *inode, struct file *filp)
{
 struct dev_dax *dev_dax = filp->private_data;

 dev_dbg(&dev_dax->dev, "trace\n");
 return 0;
}
