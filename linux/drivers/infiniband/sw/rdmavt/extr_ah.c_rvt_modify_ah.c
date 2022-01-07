
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_ah_attr {int dummy; } ;
struct rvt_ah {struct rdma_ah_attr attr; } ;
struct ib_ah {int device; } ;


 int EINVAL ;
 struct rvt_ah* ibah_to_rvtah (struct ib_ah*) ;
 scalar_t__ rvt_check_ah (int ,struct rdma_ah_attr*) ;

int rvt_modify_ah(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr)
{
 struct rvt_ah *ah = ibah_to_rvtah(ibah);

 if (rvt_check_ah(ibah->device, ah_attr))
  return -EINVAL;

 ah->attr = *ah_attr;

 return 0;
}
