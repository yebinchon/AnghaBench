
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sa_path_rec {scalar_t__ rec_type; } ;
struct cm_lap_msg {int alt_remote_gid; int alt_local_gid; int alt_remote_lid; int alt_local_lid; } ;


 scalar_t__ SA_PATH_REC_TYPE_OPA ;
 int ntohs (int ) ;
 int opa_get_lid_from_gid (int *) ;
 int sa_path_set_dlid (struct sa_path_rec*,int ) ;
 int sa_path_set_slid (struct sa_path_rec*,int ) ;

__attribute__((used)) static void cm_format_path_lid_from_lap(struct cm_lap_msg *lap_msg,
     struct sa_path_rec *path)
{
 u32 lid;

 if (path->rec_type != SA_PATH_REC_TYPE_OPA) {
  sa_path_set_dlid(path, ntohs(lap_msg->alt_local_lid));
  sa_path_set_slid(path, ntohs(lap_msg->alt_remote_lid));
 } else {
  lid = opa_get_lid_from_gid(&lap_msg->alt_local_gid);
  sa_path_set_dlid(path, lid);

  lid = opa_get_lid_from_gid(&lap_msg->alt_remote_gid);
  sa_path_set_slid(path, lid);
 }
}
