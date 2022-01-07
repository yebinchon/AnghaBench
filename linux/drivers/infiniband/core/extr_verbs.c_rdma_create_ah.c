
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rdma_ah_attr {int dummy; } ;
struct ib_pd {int device; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_ah {int dummy; } ;


 struct ib_ah* ERR_PTR (int) ;
 struct ib_ah* _rdma_create_ah (struct ib_pd*,struct rdma_ah_attr*,int ,int *) ;
 int rdma_fill_sgid_attr (int ,struct rdma_ah_attr*,struct ib_gid_attr const**) ;
 int rdma_unfill_sgid_attr (struct rdma_ah_attr*,struct ib_gid_attr const*) ;

struct ib_ah *rdma_create_ah(struct ib_pd *pd, struct rdma_ah_attr *ah_attr,
        u32 flags)
{
 const struct ib_gid_attr *old_sgid_attr;
 struct ib_ah *ah;
 int ret;

 ret = rdma_fill_sgid_attr(pd->device, ah_attr, &old_sgid_attr);
 if (ret)
  return ERR_PTR(ret);

 ah = _rdma_create_ah(pd, ah_attr, flags, ((void*)0));

 rdma_unfill_sgid_attr(ah_attr, old_sgid_attr);
 return ah;
}
