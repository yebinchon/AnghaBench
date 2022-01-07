
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_udata {int dummy; } ;
struct ib_cq_init_attr {scalar_t__ flags; } ;
struct ib_cq {int dummy; } ;


 int EINVAL ;

int usnic_ib_create_cq(struct ib_cq *ibcq, const struct ib_cq_init_attr *attr,
         struct ib_udata *udata)
{
 if (attr->flags)
  return -EINVAL;

 return 0;
}
