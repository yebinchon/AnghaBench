
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ qpn; } ;
struct mlx4_ib_qp {TYPE_2__ mqp; } ;
struct mlx4_ib_dev {TYPE_5__* dev; } ;
struct TYPE_10__ {int num_ports; TYPE_3__* spec_qps; } ;
struct TYPE_7__ {scalar_t__ base_sqpn; } ;
struct TYPE_11__ {TYPE_4__ caps; TYPE_1__ phys_caps; } ;
struct TYPE_9__ {scalar_t__ qp0_proxy; } ;


 scalar_t__ mlx4_is_master (TYPE_5__*) ;
 scalar_t__ mlx4_is_mfunc (TYPE_5__*) ;

__attribute__((used)) static int is_qp0(struct mlx4_ib_dev *dev, struct mlx4_ib_qp *qp)
{
 int proxy_qp0 = 0;
 int real_qp0 = 0;
 int i;

 real_qp0 = ((mlx4_is_master(dev->dev) || !mlx4_is_mfunc(dev->dev)) &&
      qp->mqp.qpn >= dev->dev->phys_caps.base_sqpn &&
      qp->mqp.qpn <= dev->dev->phys_caps.base_sqpn + 1);
 if (real_qp0)
  return 1;

 if (mlx4_is_mfunc(dev->dev)) {
  for (i = 0; i < dev->dev->caps.num_ports; i++) {
   if (qp->mqp.qpn == dev->dev->caps.spec_qps[i].qp0_proxy) {
    proxy_qp0 = 1;
    break;
   }
  }
 }
 return proxy_qp0;
}
