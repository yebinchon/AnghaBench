
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cec_devnode {int minor; } ;


 int cec_delete_adapter (int ) ;
 int cec_devnode_lock ;
 int cec_devnode_nums ;
 int clear_bit (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int to_cec_adapter (struct cec_devnode*) ;
 struct cec_devnode* to_cec_devnode (struct device*) ;

__attribute__((used)) static void cec_devnode_release(struct device *cd)
{
 struct cec_devnode *devnode = to_cec_devnode(cd);

 mutex_lock(&cec_devnode_lock);

 clear_bit(devnode->minor, cec_devnode_nums);
 mutex_unlock(&cec_devnode_lock);

 cec_delete_adapter(to_cec_adapter(devnode));
}
