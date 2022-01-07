
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct sa_path_rec {int rec_type; } ;
struct ib_device {int dummy; } ;


 int SA_PATH_REC_TYPE_IB ;
 int SA_PATH_REC_TYPE_OPA ;
 scalar_t__ ib_is_opa_gid (union ib_gid*) ;
 scalar_t__ rdma_cap_opa_ah (struct ib_device*,int ) ;

__attribute__((used)) static void cm_path_set_rec_type(struct ib_device *ib_device, u8 port_num,
     struct sa_path_rec *path, union ib_gid *gid)
{
 if (ib_is_opa_gid(gid) && rdma_cap_opa_ah(ib_device, port_num))
  path->rec_type = SA_PATH_REC_TYPE_OPA;
 else
  path->rec_type = SA_PATH_REC_TYPE_IB;
}
