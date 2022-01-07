
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dax_device {int flags; } ;


 int DAXDEV_ALIVE ;
 int WARN_ONCE (int ,char*) ;
 int test_bit (int ,int *) ;
 struct dax_device* to_dax_dev (struct inode*) ;

__attribute__((used)) static void dax_destroy_inode(struct inode *inode)
{
 struct dax_device *dax_dev = to_dax_dev(inode);
 WARN_ONCE(test_bit(DAXDEV_ALIVE, &dax_dev->flags),
   "kill_dax() must be called before final iput()\n");
}
