
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rdev; } ;
typedef int dev_t ;



__attribute__((used)) static int dax_set(struct inode *inode, void *data)
{
 dev_t devt = *(dev_t *) data;

 inode->i_rdev = devt;
 return 0;
}
