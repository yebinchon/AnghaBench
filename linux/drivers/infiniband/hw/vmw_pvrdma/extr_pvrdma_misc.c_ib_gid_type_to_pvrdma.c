
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;


 int IB_GID_TYPE_ROCE_UDP_ENCAP ;
 int PVRDMA_GID_TYPE_FLAG_ROCE_V1 ;
 int PVRDMA_GID_TYPE_FLAG_ROCE_V2 ;

u8 ib_gid_type_to_pvrdma(enum ib_gid_type gid_type)
{
 return (gid_type == IB_GID_TYPE_ROCE_UDP_ENCAP) ?
  PVRDMA_GID_TYPE_FLAG_ROCE_V2 :
  PVRDMA_GID_TYPE_FLAG_ROCE_V1;
}
