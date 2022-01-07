
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_mr {int dummy; } ;
struct rxe_pd {struct ib_mr ibmr; } ;
struct rxe_mem {struct ib_mr ibmr; } ;
struct rxe_dev {int mr_pool; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
typedef enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int IB_MR_TYPE_MEM_REG ;
 int rxe_add_index (struct rxe_pd*) ;
 int rxe_add_ref (struct rxe_pd*) ;
 struct rxe_pd* rxe_alloc (int *) ;
 int rxe_drop_index (struct rxe_pd*) ;
 int rxe_drop_ref (struct rxe_pd*) ;
 int rxe_mem_init_fast (struct rxe_pd*,int ,struct rxe_pd*) ;
 struct rxe_dev* to_rdev (int ) ;
 struct rxe_pd* to_rpd (struct ib_pd*) ;

__attribute__((used)) static struct ib_mr *rxe_alloc_mr(struct ib_pd *ibpd, enum ib_mr_type mr_type,
      u32 max_num_sg, struct ib_udata *udata)
{
 struct rxe_dev *rxe = to_rdev(ibpd->device);
 struct rxe_pd *pd = to_rpd(ibpd);
 struct rxe_mem *mr;
 int err;

 if (mr_type != IB_MR_TYPE_MEM_REG)
  return ERR_PTR(-EINVAL);

 mr = rxe_alloc(&rxe->mr_pool);
 if (!mr) {
  err = -ENOMEM;
  goto err1;
 }

 rxe_add_index(mr);

 rxe_add_ref(pd);

 err = rxe_mem_init_fast(pd, max_num_sg, mr);
 if (err)
  goto err2;

 return &mr->ibmr;

err2:
 rxe_drop_ref(pd);
 rxe_drop_index(mr);
 rxe_drop_ref(mr);
err1:
 return ERR_PTR(err);
}
