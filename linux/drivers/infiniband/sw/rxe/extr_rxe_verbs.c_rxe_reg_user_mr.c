
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ib_mr {int dummy; } ;
struct rxe_pd {struct ib_mr ibmr; } ;
struct rxe_mem {struct ib_mr ibmr; } ;
struct rxe_dev {int mr_pool; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int rxe_add_index (struct rxe_pd*) ;
 int rxe_add_ref (struct rxe_pd*) ;
 struct rxe_pd* rxe_alloc (int *) ;
 int rxe_drop_index (struct rxe_pd*) ;
 int rxe_drop_ref (struct rxe_pd*) ;
 int rxe_mem_init_user (struct rxe_pd*,int ,int ,int ,int,struct ib_udata*,struct rxe_pd*) ;
 struct rxe_dev* to_rdev (int ) ;
 struct rxe_pd* to_rpd (struct ib_pd*) ;

__attribute__((used)) static struct ib_mr *rxe_reg_user_mr(struct ib_pd *ibpd,
         u64 start,
         u64 length,
         u64 iova,
         int access, struct ib_udata *udata)
{
 int err;
 struct rxe_dev *rxe = to_rdev(ibpd->device);
 struct rxe_pd *pd = to_rpd(ibpd);
 struct rxe_mem *mr;

 mr = rxe_alloc(&rxe->mr_pool);
 if (!mr) {
  err = -ENOMEM;
  goto err2;
 }

 rxe_add_index(mr);

 rxe_add_ref(pd);

 err = rxe_mem_init_user(pd, start, length, iova,
    access, udata, mr);
 if (err)
  goto err3;

 return &mr->ibmr;

err3:
 rxe_drop_ref(pd);
 rxe_drop_index(mr);
 rxe_drop_ref(mr);
err2:
 return ERR_PTR(err);
}
