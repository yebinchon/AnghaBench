
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_qp_grp_flow {int trans_type; int link; } ;




 int WARN (int,char*,int) ;
 int list_del (int *) ;
 int release_roce_custom_flow (struct usnic_ib_qp_grp_flow*) ;
 int release_udp_flow (struct usnic_ib_qp_grp_flow*) ;
 int usnic_debugfs_flow_remove (struct usnic_ib_qp_grp_flow*) ;

__attribute__((used)) static void release_and_remove_flow(struct usnic_ib_qp_grp_flow *qp_flow)
{
 usnic_debugfs_flow_remove(qp_flow);
 list_del(&qp_flow->link);

 switch (qp_flow->trans_type) {
 case 128:
  release_roce_custom_flow(qp_flow);
  break;
 case 129:
  release_udp_flow(qp_flow);
  break;
 default:
  WARN(1, "Unsupported transport %u\n",
    qp_flow->trans_type);
  break;
 }
}
