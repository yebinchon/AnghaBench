
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_rdev; } ;
typedef scalar_t__ dev_t ;



__attribute__((used)) static int dax_test(struct inode *inode, void *data)
{
 dev_t devt = *(dev_t *) data;

 return inode->i_rdev == devt;
}
