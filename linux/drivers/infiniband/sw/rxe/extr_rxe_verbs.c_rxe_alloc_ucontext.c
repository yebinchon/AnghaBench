
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_ucontext {int pelem; } ;
struct rxe_dev {int uc_pool; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int device; } ;


 int rxe_add_to_pool (int *,int *) ;
 struct rxe_dev* to_rdev (int ) ;
 struct rxe_ucontext* to_ruc (struct ib_ucontext*) ;

__attribute__((used)) static int rxe_alloc_ucontext(struct ib_ucontext *uctx, struct ib_udata *udata)
{
 struct rxe_dev *rxe = to_rdev(uctx->device);
 struct rxe_ucontext *uc = to_ruc(uctx);

 return rxe_add_to_pool(&rxe->uc_pool, &uc->pelem);
}
