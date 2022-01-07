
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dax_device {struct inode inode; } ;


 int inode_init_once (struct inode*) ;
 int memset (struct dax_device*,int ,int) ;

__attribute__((used)) static void init_once(void *_dax_dev)
{
 struct dax_device *dax_dev = _dax_dev;
 struct inode *inode = &dax_dev->inode;

 memset(dax_dev, 0, sizeof(*dax_dev));
 inode_init_once(inode);
}
