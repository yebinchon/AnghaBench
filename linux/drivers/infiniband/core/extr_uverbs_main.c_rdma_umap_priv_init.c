
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int * vm_ops; struct rdma_umap_priv* vm_private_data; TYPE_1__* vm_file; } ;
struct rdma_umap_priv {int list; struct vm_area_struct* vma; } ;
struct ib_uverbs_file {int umap_lock; int umaps; } ;
struct TYPE_2__ {struct ib_uverbs_file* private_data; } ;


 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_umap_ops ;

__attribute__((used)) static void rdma_umap_priv_init(struct rdma_umap_priv *priv,
    struct vm_area_struct *vma)
{
 struct ib_uverbs_file *ufile = vma->vm_file->private_data;

 priv->vma = vma;
 vma->vm_private_data = priv;
 vma->vm_ops = &rdma_umap_ops;

 mutex_lock(&ufile->umap_lock);
 list_add(&priv->list, &ufile->umaps);
 mutex_unlock(&ufile->umap_lock);
}
