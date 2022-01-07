
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct hidraw_list {int node; } ;
struct file {struct hidraw_list* private_data; } ;
struct TYPE_3__ {int list_lock; } ;


 int drop_ref (TYPE_1__*,int ) ;
 TYPE_1__** hidraw_table ;
 unsigned int iminor (struct inode*) ;
 int kfree (struct hidraw_list*) ;
 int list_del (int *) ;
 int minors_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hidraw_release(struct inode * inode, struct file * file)
{
 unsigned int minor = iminor(inode);
 struct hidraw_list *list = file->private_data;
 unsigned long flags;

 mutex_lock(&minors_lock);

 spin_lock_irqsave(&hidraw_table[minor]->list_lock, flags);
 list_del(&list->node);
 spin_unlock_irqrestore(&hidraw_table[minor]->list_lock, flags);
 kfree(list);

 drop_ref(hidraw_table[minor], 0);

 mutex_unlock(&minors_lock);
 return 0;
}
