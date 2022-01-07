
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int num_ports; TYPE_2__* spec_qps; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {int qp0_proxy; int qp0_tunnel; int qp0_qkey; } ;


 int EINVAL ;

__attribute__((used)) static int vf_get_qp0_qkey(struct mlx4_dev *dev, int qpn, u32 *qkey)
{
 int i;
 for (i = 0; i < dev->caps.num_ports; i++) {
  if (qpn == dev->caps.spec_qps[i].qp0_proxy ||
      qpn == dev->caps.spec_qps[i].qp0_tunnel) {
   *qkey = dev->caps.spec_qps[i].qp0_qkey;
   return 0;
  }
 }
 return -EINVAL;
}
