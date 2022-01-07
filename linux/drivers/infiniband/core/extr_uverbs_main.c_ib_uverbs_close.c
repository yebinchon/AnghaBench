
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ib_uverbs_file {int ref; TYPE_1__* device; int list; } ;
struct file {struct ib_uverbs_file* private_data; } ;
struct TYPE_2__ {int lists_mutex; } ;


 int RDMA_REMOVE_CLOSE ;
 int ib_uverbs_release_file ;
 int kref_put (int *,int ) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uverbs_destroy_ufile_hw (struct ib_uverbs_file*,int ) ;

__attribute__((used)) static int ib_uverbs_close(struct inode *inode, struct file *filp)
{
 struct ib_uverbs_file *file = filp->private_data;

 uverbs_destroy_ufile_hw(file, RDMA_REMOVE_CLOSE);

 mutex_lock(&file->device->lists_mutex);
 list_del_init(&file->list);
 mutex_unlock(&file->device->lists_mutex);

 kref_put(&file->ref, ib_uverbs_release_file);

 return 0;
}
