
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hfi1_pportdata {TYPE_1__* dd; } ;
struct hfi1_ibport {int dummy; } ;
struct hfi1_ibdev {int rdi; } ;
struct TYPE_2__ {struct hfi1_ibdev verbs_dev; } ;


 int hfi1_qp_iter_cb ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 int rvt_qp_iter (int *,int ,int ) ;

void hfi1_error_port_qps(struct hfi1_ibport *ibp, u8 sl)
{
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);
 struct hfi1_ibdev *dev = &ppd->dd->verbs_dev;

 rvt_qp_iter(&dev->rdi, sl, hfi1_qp_iter_cb);
}
