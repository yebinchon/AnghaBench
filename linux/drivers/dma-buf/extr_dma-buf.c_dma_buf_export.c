
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct file {int f_mode; } ;
struct dma_resv {int dummy; } ;
struct dma_buf_export_info {int owner; int flags; int exp_name; int size; TYPE_1__* ops; scalar_t__ priv; struct dma_resv* resv; } ;
struct TYPE_7__ {scalar_t__ active; int * poll; } ;
struct TYPE_6__ {scalar_t__ active; int * poll; } ;
struct dma_buf {int list_node; int attachments; int lock; struct file* file; struct dma_resv* resv; TYPE_3__ cb_shared; TYPE_2__ cb_excl; int poll; int owner; int exp_name; int size; TYPE_1__* ops; scalar_t__ priv; } ;
struct TYPE_8__ {int lock; int head; } ;
struct TYPE_5__ {int release; int unmap_dma_buf; int map_dma_buf; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct dma_buf* ERR_PTR (int) ;
 int FMODE_LSEEK ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 scalar_t__ WARN_ON (int) ;
 TYPE_4__ db_list ;
 struct file* dma_buf_getfile (struct dma_buf*,int ) ;
 int dma_resv_init (struct dma_resv*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct dma_buf*) ;
 struct dma_buf* kzalloc (size_t,int ) ;
 int list_add (int *,int *) ;
 int module_put (int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int try_module_get (int ) ;

struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
{
 struct dma_buf *dmabuf;
 struct dma_resv *resv = exp_info->resv;
 struct file *file;
 size_t alloc_size = sizeof(struct dma_buf);
 int ret;

 if (!exp_info->resv)
  alloc_size += sizeof(struct dma_resv);
 else

  alloc_size += 1;

 if (WARN_ON(!exp_info->priv
     || !exp_info->ops
     || !exp_info->ops->map_dma_buf
     || !exp_info->ops->unmap_dma_buf
     || !exp_info->ops->release)) {
  return ERR_PTR(-EINVAL);
 }

 if (!try_module_get(exp_info->owner))
  return ERR_PTR(-ENOENT);

 dmabuf = kzalloc(alloc_size, GFP_KERNEL);
 if (!dmabuf) {
  ret = -ENOMEM;
  goto err_module;
 }

 dmabuf->priv = exp_info->priv;
 dmabuf->ops = exp_info->ops;
 dmabuf->size = exp_info->size;
 dmabuf->exp_name = exp_info->exp_name;
 dmabuf->owner = exp_info->owner;
 init_waitqueue_head(&dmabuf->poll);
 dmabuf->cb_excl.poll = dmabuf->cb_shared.poll = &dmabuf->poll;
 dmabuf->cb_excl.active = dmabuf->cb_shared.active = 0;

 if (!resv) {
  resv = (struct dma_resv *)&dmabuf[1];
  dma_resv_init(resv);
 }
 dmabuf->resv = resv;

 file = dma_buf_getfile(dmabuf, exp_info->flags);
 if (IS_ERR(file)) {
  ret = PTR_ERR(file);
  goto err_dmabuf;
 }

 file->f_mode |= FMODE_LSEEK;
 dmabuf->file = file;

 mutex_init(&dmabuf->lock);
 INIT_LIST_HEAD(&dmabuf->attachments);

 mutex_lock(&db_list.lock);
 list_add(&dmabuf->list_node, &db_list.head);
 mutex_unlock(&db_list.lock);

 return dmabuf;

err_dmabuf:
 kfree(dmabuf);
err_module:
 module_put(exp_info->owner);
 return ERR_PTR(ret);
}
