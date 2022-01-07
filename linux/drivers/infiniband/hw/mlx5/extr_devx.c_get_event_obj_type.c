
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ qp_srq; } ;
struct mlx5_eqe {TYPE_2__ data; } ;


 int MLX5_EVENT_QUEUE_TYPE_DCT ;
 int MLX5_GET (int ,TYPE_2__*,int ) ;
 int affiliated_event_header ;
 int obj_type ;

__attribute__((used)) static u16 get_event_obj_type(unsigned long event_type, struct mlx5_eqe *eqe)
{
 switch (event_type) {
 case 130:
 case 131:
 case 129:
 case 133:
 case 137:
 case 136:
 case 141:
 case 135:
 case 132:
 case 134:
  return eqe->data.qp_srq.type;
 case 140:
 case 128:
  return 0;
 case 139:
 case 138:
  return MLX5_EVENT_QUEUE_TYPE_DCT;
 default:
  return MLX5_GET(affiliated_event_header, &eqe->data, obj_type);
 }
}
