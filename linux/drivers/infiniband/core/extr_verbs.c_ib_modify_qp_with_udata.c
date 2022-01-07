
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_udata {int dummy; } ;
struct ib_qp_attr {int dummy; } ;
struct ib_qp {int real_qp; } ;


 int _ib_modify_qp (int ,struct ib_qp_attr*,int,struct ib_udata*) ;

int ib_modify_qp_with_udata(struct ib_qp *ib_qp, struct ib_qp_attr *attr,
       int attr_mask, struct ib_udata *udata)
{
 return _ib_modify_qp(ib_qp->real_qp, attr, attr_mask, udata);
}
