
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_transport_spec {int trans_type; } ;
struct usnic_ib_qp_grp_flow {int link; } ;
struct usnic_ib_qp_grp {int flows_lst; } ;
typedef enum usnic_transport_type { ____Placeholder_usnic_transport_type } usnic_transport_type ;


 int EINVAL ;
 struct usnic_ib_qp_grp_flow* ERR_PTR (int ) ;
 int IS_ERR_OR_NULL (struct usnic_ib_qp_grp_flow*) ;


 struct usnic_ib_qp_grp_flow* create_roce_custom_flow (struct usnic_ib_qp_grp*,struct usnic_transport_spec*) ;
 struct usnic_ib_qp_grp_flow* create_udp_flow (struct usnic_ib_qp_grp*,struct usnic_transport_spec*) ;
 int list_add_tail (int *,int *) ;
 int usnic_debugfs_flow_add (struct usnic_ib_qp_grp_flow*) ;
 int usnic_err (char*,int) ;

__attribute__((used)) static struct usnic_ib_qp_grp_flow*
create_and_add_flow(struct usnic_ib_qp_grp *qp_grp,
   struct usnic_transport_spec *trans_spec)
{
 struct usnic_ib_qp_grp_flow *qp_flow;
 enum usnic_transport_type trans_type;

 trans_type = trans_spec->trans_type;
 switch (trans_type) {
 case 128:
  qp_flow = create_roce_custom_flow(qp_grp, trans_spec);
  break;
 case 129:
  qp_flow = create_udp_flow(qp_grp, trans_spec);
  break;
 default:
  usnic_err("Unsupported transport %u\n",
    trans_spec->trans_type);
  return ERR_PTR(-EINVAL);
 }

 if (!IS_ERR_OR_NULL(qp_flow)) {
  list_add_tail(&qp_flow->link, &qp_grp->flows_lst);
  usnic_debugfs_flow_add(qp_flow);
 }


 return qp_flow;
}
