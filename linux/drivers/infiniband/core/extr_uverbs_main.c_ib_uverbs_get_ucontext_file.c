
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uverbs_file {TYPE_1__* device; int ucontext; } ;
struct ib_ucontext {int dummy; } ;
struct TYPE_2__ {int disassociate_srcu; int ib_dev; } ;


 int EINVAL ;
 int EIO ;
 struct ib_ucontext* ERR_PTR (int ) ;
 struct ib_ucontext* smp_load_acquire (int *) ;
 int srcu_dereference (int ,int *) ;

struct ib_ucontext *ib_uverbs_get_ucontext_file(struct ib_uverbs_file *ufile)
{





 struct ib_ucontext *ucontext = smp_load_acquire(&ufile->ucontext);

 if (!srcu_dereference(ufile->device->ib_dev,
         &ufile->device->disassociate_srcu))
  return ERR_PTR(-EIO);

 if (!ucontext)
  return ERR_PTR(-EINVAL);

 return ucontext;
}
