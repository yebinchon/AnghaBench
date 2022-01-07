
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_device {int inode; } ;


 int iput (int *) ;

void put_dax(struct dax_device *dax_dev)
{
 if (!dax_dev)
  return;
 iput(&dax_dev->inode);
}
