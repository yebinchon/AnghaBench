
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct rdma_umap_priv* vm_private_data; TYPE_1__* vm_file; } ;
struct rdma_umap_priv {int dummy; } ;
struct ib_uverbs_file {int hw_destroy_rwsem; int ucontext; } ;
struct TYPE_2__ {struct ib_uverbs_file* private_data; } ;


 int GFP_KERNEL ;
 int down_read_trylock (int *) ;
 struct rdma_umap_priv* kzalloc (int,int ) ;
 int rdma_umap_priv_init (struct rdma_umap_priv*,struct vm_area_struct*) ;
 int up_read (int *) ;
 int zap_vma_ptes (struct vm_area_struct*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void rdma_umap_open(struct vm_area_struct *vma)
{
 struct ib_uverbs_file *ufile = vma->vm_file->private_data;
 struct rdma_umap_priv *opriv = vma->vm_private_data;
 struct rdma_umap_priv *priv;

 if (!opriv)
  return;


 if (!down_read_trylock(&ufile->hw_destroy_rwsem))
  goto out_zap;



 if (!ufile->ucontext)
  goto out_unlock;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  goto out_unlock;
 rdma_umap_priv_init(priv, vma);

 up_read(&ufile->hw_destroy_rwsem);
 return;

out_unlock:
 up_read(&ufile->hw_destroy_rwsem);
out_zap:





 vma->vm_private_data = ((void*)0);
 zap_vma_ptes(vma, vma->vm_start, vma->vm_end - vma->vm_start);
}
