
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int sock; } ;
struct TYPE_3__ {int port_num; } ;
struct usnic_ib_qp_grp_flow {int trans_type; TYPE_2__ udp; TYPE_1__ usnic_roce; } ;
typedef enum usnic_transport_type { ____Placeholder_usnic_transport_type } usnic_transport_type ;


 int EINVAL ;


 int usnic_err (char*,int) ;
 int usnic_transport_sock_get_addr (int ,int *,int *,int *) ;

__attribute__((used)) static int qp_grp_id_from_flow(struct usnic_ib_qp_grp_flow *qp_flow,
    uint32_t *id)
{
 enum usnic_transport_type trans_type = qp_flow->trans_type;
 int err;
 uint16_t port_num = 0;

 switch (trans_type) {
 case 128:
  *id = qp_flow->usnic_roce.port_num;
  break;
 case 129:
  err = usnic_transport_sock_get_addr(qp_flow->udp.sock,
       ((void*)0), ((void*)0),
       &port_num);
  if (err)
   return err;





  *id = port_num;
  break;
 default:
  usnic_err("Unsupported transport %u\n", trans_type);
  return -EINVAL;
 }

 return 0;
}
