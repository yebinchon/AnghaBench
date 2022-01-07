
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct rdma_umap_priv* vm_private_data; TYPE_1__* vm_file; } ;
struct rdma_umap_priv {int list; } ;
struct ib_uverbs_file {int umap_lock; } ;
struct TYPE_2__ {struct ib_uverbs_file* private_data; } ;


 int kfree (struct rdma_umap_priv*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void rdma_umap_close(struct vm_area_struct *vma)
{
 struct ib_uverbs_file *ufile = vma->vm_file->private_data;
 struct rdma_umap_priv *priv = vma->vm_private_data;

 if (!priv)
  return;






 mutex_lock(&ufile->umap_lock);
 list_del(&priv->list);
 mutex_unlock(&ufile->umap_lock);
 kfree(priv);
}
