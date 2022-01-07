
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_ports; TYPE_1__* spec_qps; } ;
struct mlx4_dev {TYPE_2__ caps; } ;
struct TYPE_3__ {int qp0_proxy; int qp0_qkey; } ;



__attribute__((used)) static int qp0_enabled_vf(struct mlx4_dev *dev, int qpn)
{
 int i;
 for (i = 0; i < dev->caps.num_ports; i++) {
  if (qpn == dev->caps.spec_qps[i].qp0_proxy)
   return !!dev->caps.spec_qps[i].qp0_qkey;
 }
 return 0;
}
