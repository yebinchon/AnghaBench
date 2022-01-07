
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rdma_ah_attr {int dummy; } ;
struct mthca_ah {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_ah {int pd; int device; } ;


 int mthca_create_ah (int ,int ,struct rdma_ah_attr*,struct mthca_ah*) ;
 struct mthca_ah* to_mah (struct ib_ah*) ;
 int to_mdev (int ) ;
 int to_mpd (int ) ;

__attribute__((used)) static int mthca_ah_create(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr,
      u32 flags, struct ib_udata *udata)

{
 struct mthca_ah *ah = to_mah(ibah);

 return mthca_create_ah(to_mdev(ibah->device), to_mpd(ibah->pd), ah_attr,
          ah);
}
