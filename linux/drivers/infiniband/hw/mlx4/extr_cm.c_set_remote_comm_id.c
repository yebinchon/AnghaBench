
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ attr_id; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;
struct cm_sidr_generic_msg {void* request_id; } ;
struct cm_generic_msg {void* remote_comm_id; } ;


 scalar_t__ CM_SIDR_REP_ATTR_ID ;
 scalar_t__ CM_SIDR_REQ_ATTR_ID ;
 void* cpu_to_be32 (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static void set_remote_comm_id(struct ib_mad *mad, u32 cm_id)
{
 if (mad->mad_hdr.attr_id == CM_SIDR_REP_ATTR_ID) {
  struct cm_sidr_generic_msg *msg =
   (struct cm_sidr_generic_msg *)mad;
  msg->request_id = cpu_to_be32(cm_id);
 } else if (mad->mad_hdr.attr_id == CM_SIDR_REQ_ATTR_ID) {
  pr_err("trying to set remote_comm_id in SIDR_REQ\n");
  return;
 } else {
  struct cm_generic_msg *msg = (struct cm_generic_msg *)mad;
  msg->remote_comm_id = cpu_to_be32(cm_id);
 }
}
