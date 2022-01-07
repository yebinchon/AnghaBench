
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_req_msg {int alt_local_gid; scalar_t__ alt_local_lid; } ;


 scalar_t__ ib_is_opa_gid (int *) ;

__attribute__((used)) static bool cm_req_has_alt_path(struct cm_req_msg *req_msg)
{
 return ((req_msg->alt_local_lid) ||
  (ib_is_opa_gid(&req_msg->alt_local_gid)));
}
