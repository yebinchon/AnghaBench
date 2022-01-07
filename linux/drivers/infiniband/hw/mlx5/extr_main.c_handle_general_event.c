
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int delay_drop_work; } ;
struct mlx5_ib_dev {TYPE_3__ delay_drop; int ib_dev; } ;
struct TYPE_4__ {int port; } ;
struct TYPE_5__ {TYPE_1__ port; } ;
struct mlx5_eqe {int sub_type; TYPE_2__ data; } ;
struct ib_event {int dummy; } ;


 int IB_LINK_LAYER_ETHERNET ;

 int mlx5_ib_port_link_layer (int *,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static void handle_general_event(struct mlx5_ib_dev *ibdev, struct mlx5_eqe *eqe,
     struct ib_event *ibev)
{
 u8 port = (eqe->data.port.port >> 4) & 0xf;

 switch (eqe->sub_type) {
 case 128:
  if (mlx5_ib_port_link_layer(&ibdev->ib_dev, port) ==
         IB_LINK_LAYER_ETHERNET)
   schedule_work(&ibdev->delay_drop.delay_drop_work);
  break;
 default:
  return;
 }
}
