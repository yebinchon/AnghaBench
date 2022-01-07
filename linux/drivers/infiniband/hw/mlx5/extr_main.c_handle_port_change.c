
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {TYPE_4__* ports; } ;
struct mlx5_ib_dev {TYPE_5__ devr; int ib_dev; } ;
struct TYPE_6__ {int port; } ;
struct TYPE_7__ {TYPE_1__ port; } ;
struct mlx5_eqe {int sub_type; TYPE_2__ data; } ;
struct TYPE_8__ {int port_num; } ;
struct ib_event {int event; TYPE_3__ element; } ;
struct TYPE_9__ {int pkey_change_work; } ;


 int EINVAL ;
 int IB_EVENT_CLIENT_REREGISTER ;
 int IB_EVENT_GID_CHANGE ;
 int IB_EVENT_LID_CHANGE ;
 int IB_EVENT_PKEY_CHANGE ;
 int IB_EVENT_PORT_ACTIVE ;
 int IB_EVENT_PORT_ERR ;
 int IB_LINK_LAYER_ETHERNET ;







 int mlx5_ib_port_link_layer (int *,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static int handle_port_change(struct mlx5_ib_dev *ibdev, struct mlx5_eqe *eqe,
         struct ib_event *ibev)
{
 u8 port = (eqe->data.port.port >> 4) & 0xf;

 ibev->element.port_num = port;

 switch (eqe->sub_type) {
 case 134:
 case 132:
 case 130:



  if (mlx5_ib_port_link_layer(&ibdev->ib_dev, port) ==
         IB_LINK_LAYER_ETHERNET)
   return -EINVAL;

  ibev->event = (eqe->sub_type == 134) ?
    IB_EVENT_PORT_ACTIVE : IB_EVENT_PORT_ERR;
  break;

 case 129:
  ibev->event = IB_EVENT_LID_CHANGE;
  break;

 case 128:
  ibev->event = IB_EVENT_PKEY_CHANGE;
  schedule_work(&ibdev->devr.ports[port - 1].pkey_change_work);
  break;

 case 131:
  ibev->event = IB_EVENT_GID_CHANGE;
  break;

 case 133:
  ibev->event = IB_EVENT_CLIENT_REREGISTER;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
