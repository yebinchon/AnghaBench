
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rdma_ah_attr {int dummy; } ;
struct ib_wc {int dummy; } ;
struct ib_pd {int device; } ;
struct ib_grh {int dummy; } ;
struct ib_ah {int dummy; } ;


 struct ib_ah* ERR_PTR (int) ;
 int RDMA_CREATE_AH_SLEEPABLE ;
 int ib_init_ah_attr_from_wc (int ,int ,struct ib_wc const*,struct ib_grh const*,struct rdma_ah_attr*) ;
 struct ib_ah* rdma_create_ah (struct ib_pd*,struct rdma_ah_attr*,int ) ;
 int rdma_destroy_ah_attr (struct rdma_ah_attr*) ;

struct ib_ah *ib_create_ah_from_wc(struct ib_pd *pd, const struct ib_wc *wc,
       const struct ib_grh *grh, u8 port_num)
{
 struct rdma_ah_attr ah_attr;
 struct ib_ah *ah;
 int ret;

 ret = ib_init_ah_attr_from_wc(pd->device, port_num, wc, grh, &ah_attr);
 if (ret)
  return ERR_PTR(ret);

 ah = rdma_create_ah(pd, &ah_attr, RDMA_CREATE_AH_SLEEPABLE);

 rdma_destroy_ah_attr(&ah_attr);
 return ah;
}
