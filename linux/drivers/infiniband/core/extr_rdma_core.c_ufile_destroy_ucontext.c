
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uverbs_file {struct ib_ucontext* ucontext; } ;
struct ib_ucontext {int res; int cg_obj; struct ib_device* device; } ;
struct TYPE_2__ {int (* dealloc_ucontext ) (struct ib_ucontext*) ;int (* disassociate_ucontext ) (struct ib_ucontext*) ;} ;
struct ib_device {TYPE_1__ ops; } ;
typedef enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;


 int RDMACG_RESOURCE_HCA_HANDLE ;
 int RDMA_REMOVE_DRIVER_REMOVE ;
 int ib_rdmacg_uncharge (int *,struct ib_device*,int ) ;
 int kfree (struct ib_ucontext*) ;
 int rdma_restrack_del (int *) ;
 int stub1 (struct ib_ucontext*) ;
 int stub2 (struct ib_ucontext*) ;
 int uverbs_user_mmap_disassociate (struct ib_uverbs_file*) ;

__attribute__((used)) static void ufile_destroy_ucontext(struct ib_uverbs_file *ufile,
       enum rdma_remove_reason reason)
{
 struct ib_ucontext *ucontext = ufile->ucontext;
 struct ib_device *ib_dev = ucontext->device;






 if (reason == RDMA_REMOVE_DRIVER_REMOVE) {
  uverbs_user_mmap_disassociate(ufile);
  if (ib_dev->ops.disassociate_ucontext)
   ib_dev->ops.disassociate_ucontext(ucontext);
 }

 ib_rdmacg_uncharge(&ucontext->cg_obj, ib_dev,
      RDMACG_RESOURCE_HCA_HANDLE);

 rdma_restrack_del(&ucontext->res);

 ib_dev->ops.dealloc_ucontext(ucontext);
 kfree(ucontext);

 ufile->ucontext = ((void*)0);
}
