
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umem {size_t length; unsigned long address; int owning_mm; int writable; int ibdev; } ;
struct ib_umem_odp {int page_shift; struct ib_umem umem; int is_implicit_odp; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_umem_odp* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 int ib_init_umem_odp (struct ib_umem_odp*) ;
 int kfree (struct ib_umem_odp*) ;
 struct ib_umem_odp* kzalloc (int,int ) ;

struct ib_umem_odp *ib_umem_odp_alloc_child(struct ib_umem_odp *root,
         unsigned long addr, size_t size)
{




 struct ib_umem_odp *odp_data;
 struct ib_umem *umem;
 int ret;

 if (WARN_ON(!root->is_implicit_odp))
  return ERR_PTR(-EINVAL);

 odp_data = kzalloc(sizeof(*odp_data), GFP_KERNEL);
 if (!odp_data)
  return ERR_PTR(-ENOMEM);
 umem = &odp_data->umem;
 umem->ibdev = root->umem.ibdev;
 umem->length = size;
 umem->address = addr;
 umem->writable = root->umem.writable;
 umem->owning_mm = root->umem.owning_mm;
 odp_data->page_shift = PAGE_SHIFT;

 ret = ib_init_umem_odp(odp_data);
 if (ret) {
  kfree(odp_data);
  return ERR_PTR(ret);
 }
 return odp_data;
}
