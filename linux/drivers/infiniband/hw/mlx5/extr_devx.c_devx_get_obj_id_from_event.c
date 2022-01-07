
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int cqn; } ;
struct TYPE_7__ {int dctn; } ;
struct TYPE_6__ {int type_xrqn; } ;
struct TYPE_9__ {int qp_srq_n; } ;
struct TYPE_10__ {TYPE_3__ cq_err; TYPE_2__ dct; TYPE_1__ xrq_err; TYPE_4__ qp_srq; } ;
struct mlx5_eqe {TYPE_5__ data; } ;
 int MLX5_GET (int ,TYPE_5__*,int) ;
 int affiliated_event_header ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static u32 devx_get_obj_id_from_event(unsigned long event_type, void *data)
{
 struct mlx5_eqe *eqe = data;
 u32 obj_id = 0;

 switch (event_type) {
 case 134:
 case 132:
 case 137:
 case 141:
 case 135:
 case 133:
 case 130:
 case 136:
 case 129:
 case 131:
  obj_id = be32_to_cpu(eqe->data.qp_srq.qp_srq_n) & 0xffffff;
  break;
 case 128:
  obj_id = be32_to_cpu(eqe->data.xrq_err.type_xrqn) & 0xffffff;
  break;
 case 139:
 case 138:
  obj_id = be32_to_cpu(eqe->data.dct.dctn) & 0xffffff;
  break;
 case 140:
  obj_id = be32_to_cpu(eqe->data.cq_err.cqn) & 0xffffff;
  break;
 default:
  obj_id = MLX5_GET(affiliated_event_header, &eqe->data, obj_id);
  break;
 }

 return obj_id;
}
