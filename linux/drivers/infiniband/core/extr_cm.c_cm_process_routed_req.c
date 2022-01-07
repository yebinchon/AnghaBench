
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wc {int dlid_path_bits; int sl; int slid; } ;
struct cm_req_msg {scalar_t__ primary_local_lid; scalar_t__ primary_remote_lid; scalar_t__ alt_local_lid; scalar_t__ alt_remote_lid; } ;


 scalar_t__ IB_LID_PERMISSIVE ;
 int cm_req_get_alt_subnet_local (struct cm_req_msg*) ;
 int cm_req_get_primary_subnet_local (struct cm_req_msg*) ;
 int cm_req_set_alt_sl (struct cm_req_msg*,int ) ;
 int cm_req_set_primary_sl (struct cm_req_msg*,int ) ;
 void* cpu_to_be16 (int ) ;
 void* ib_lid_be16 (int ) ;

__attribute__((used)) static void cm_process_routed_req(struct cm_req_msg *req_msg, struct ib_wc *wc)
{
 if (!cm_req_get_primary_subnet_local(req_msg)) {
  if (req_msg->primary_local_lid == IB_LID_PERMISSIVE) {
   req_msg->primary_local_lid = ib_lid_be16(wc->slid);
   cm_req_set_primary_sl(req_msg, wc->sl);
  }

  if (req_msg->primary_remote_lid == IB_LID_PERMISSIVE)
   req_msg->primary_remote_lid = cpu_to_be16(wc->dlid_path_bits);
 }

 if (!cm_req_get_alt_subnet_local(req_msg)) {
  if (req_msg->alt_local_lid == IB_LID_PERMISSIVE) {
   req_msg->alt_local_lid = ib_lid_be16(wc->slid);
   cm_req_set_alt_sl(req_msg, wc->sl);
  }

  if (req_msg->alt_remote_lid == IB_LID_PERMISSIVE)
   req_msg->alt_remote_lid = cpu_to_be16(wc->dlid_path_bits);
 }
}
