
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct dma_buf* private_data; } ;
struct dma_resv {int dummy; } ;
struct TYPE_6__ {scalar_t__ active; } ;
struct TYPE_5__ {scalar_t__ active; } ;
struct dma_buf {int vmapping_counter; int owner; struct dma_resv* resv; int list_node; TYPE_3__* ops; TYPE_2__ cb_excl; TYPE_1__ cb_shared; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_7__ {int (* release ) (struct dma_buf*) ;} ;


 int BUG_ON (int) ;
 int EINVAL ;
 TYPE_4__ db_list ;
 int dma_resv_fini (struct dma_resv*) ;
 int is_dma_buf_file (struct file*) ;
 int kfree (struct dma_buf*) ;
 int list_del (int *) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dma_buf*) ;

__attribute__((used)) static int dma_buf_release(struct inode *inode, struct file *file)
{
 struct dma_buf *dmabuf;

 if (!is_dma_buf_file(file))
  return -EINVAL;

 dmabuf = file->private_data;

 BUG_ON(dmabuf->vmapping_counter);
 BUG_ON(dmabuf->cb_shared.active || dmabuf->cb_excl.active);

 dmabuf->ops->release(dmabuf);

 mutex_lock(&db_list.lock);
 list_del(&dmabuf->list_node);
 mutex_unlock(&db_list.lock);

 if (dmabuf->resv == (struct dma_resv *)&dmabuf[1])
  dma_resv_fini(dmabuf->resv);

 module_put(dmabuf->owner);
 kfree(dmabuf);
 return 0;
}
