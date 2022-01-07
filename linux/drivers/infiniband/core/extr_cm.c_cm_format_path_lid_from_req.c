
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sa_path_rec {scalar_t__ rec_type; } ;
struct cm_req_msg {int alt_remote_gid; int alt_local_gid; int alt_remote_lid; int alt_local_lid; int primary_remote_gid; int primary_local_gid; int primary_remote_lid; int primary_local_lid; } ;


 scalar_t__ SA_PATH_REC_TYPE_OPA ;
 int cm_req_has_alt_path (struct cm_req_msg*) ;
 int ntohs (int ) ;
 int opa_get_lid_from_gid (int *) ;
 int sa_path_set_dlid (struct sa_path_rec*,int ) ;
 int sa_path_set_slid (struct sa_path_rec*,int ) ;

__attribute__((used)) static void cm_format_path_lid_from_req(struct cm_req_msg *req_msg,
     struct sa_path_rec *primary_path,
     struct sa_path_rec *alt_path)
{
 u32 lid;

 if (primary_path->rec_type != SA_PATH_REC_TYPE_OPA) {
  sa_path_set_dlid(primary_path,
     ntohs(req_msg->primary_local_lid));
  sa_path_set_slid(primary_path,
     ntohs(req_msg->primary_remote_lid));
 } else {
  lid = opa_get_lid_from_gid(&req_msg->primary_local_gid);
  sa_path_set_dlid(primary_path, lid);

  lid = opa_get_lid_from_gid(&req_msg->primary_remote_gid);
  sa_path_set_slid(primary_path, lid);
 }

 if (!cm_req_has_alt_path(req_msg))
  return;

 if (alt_path->rec_type != SA_PATH_REC_TYPE_OPA) {
  sa_path_set_dlid(alt_path, ntohs(req_msg->alt_local_lid));
  sa_path_set_slid(alt_path, ntohs(req_msg->alt_remote_lid));
 } else {
  lid = opa_get_lid_from_gid(&req_msg->alt_local_gid);
  sa_path_set_dlid(alt_path, lid);

  lid = opa_get_lid_from_gid(&req_msg->alt_remote_gid);
  sa_path_set_slid(alt_path, lid);
 }
}
