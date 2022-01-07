
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_dev {int ah_pool; } ;
struct rxe_ah {int av; int pelem; } ;
struct rdma_ah_attr {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_ah {int device; } ;


 int rxe_add_to_pool (int *,int *) ;
 int rxe_av_chk_attr (struct rxe_dev*,struct rdma_ah_attr*) ;
 int rxe_init_av (struct rdma_ah_attr*,int *) ;
 struct rxe_ah* to_rah (struct ib_ah*) ;
 struct rxe_dev* to_rdev (int ) ;

__attribute__((used)) static int rxe_create_ah(struct ib_ah *ibah, struct rdma_ah_attr *attr,
    u32 flags, struct ib_udata *udata)

{
 int err;
 struct rxe_dev *rxe = to_rdev(ibah->device);
 struct rxe_ah *ah = to_rah(ibah);

 err = rxe_av_chk_attr(rxe, attr);
 if (err)
  return err;

 err = rxe_add_to_pool(&rxe->ah_pool, &ah->pelem);
 if (err)
  return err;

 rxe_init_av(attr, &ah->av);
 return 0;
}
