
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_umem {TYPE_1__* owning_mm; int ibdev; scalar_t__ is_odp; } ;
struct TYPE_2__ {int pinned_vm; } ;


 int __ib_umem_release (int ,struct ib_umem*,int) ;
 int atomic64_sub (int ,int *) ;
 int ib_umem_num_pages (struct ib_umem*) ;
 void ib_umem_odp_release (int ) ;
 int kfree (struct ib_umem*) ;
 int mmdrop (TYPE_1__*) ;
 int to_ib_umem_odp (struct ib_umem*) ;

void ib_umem_release(struct ib_umem *umem)
{
 if (!umem)
  return;
 if (umem->is_odp)
  return ib_umem_odp_release(to_ib_umem_odp(umem));

 __ib_umem_release(umem->ibdev, umem, 1);

 atomic64_sub(ib_umem_num_pages(umem), &umem->owning_mm->pinned_vm);
 mmdrop(umem->owning_mm);
 kfree(umem);
}
