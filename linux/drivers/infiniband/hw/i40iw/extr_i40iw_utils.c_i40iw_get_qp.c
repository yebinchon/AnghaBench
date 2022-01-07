
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp {int dummy; } ;
struct ib_device {int dummy; } ;
struct i40iw_device {int max_qp; TYPE_1__** qp_table; } ;
struct TYPE_2__ {struct ib_qp ibqp; } ;


 int IW_FIRST_QPN ;
 struct i40iw_device* to_iwdev (struct ib_device*) ;

struct ib_qp *i40iw_get_qp(struct ib_device *device, int qpn)
{
 struct i40iw_device *iwdev = to_iwdev(device);

 if ((qpn < IW_FIRST_QPN) || (qpn >= iwdev->max_qp))
  return ((void*)0);

 return &iwdev->qp_table[qpn]->ibqp;
}
