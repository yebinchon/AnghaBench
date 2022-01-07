
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_pd {int pelem; } ;
struct rxe_dev {int pd_pool; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;


 int rxe_add_to_pool (int *,int *) ;
 struct rxe_dev* to_rdev (int ) ;
 struct rxe_pd* to_rpd (struct ib_pd*) ;

__attribute__((used)) static int rxe_alloc_pd(struct ib_pd *ibpd, struct ib_udata *udata)
{
 struct rxe_dev *rxe = to_rdev(ibpd->device);
 struct rxe_pd *pd = to_rpd(ibpd);

 return rxe_add_to_pool(&rxe->pd_pool, &pd->pelem);
}
