
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;


 int memcmp (union ib_gid const*,int *,int) ;
 int zgid ;

bool rdma_is_zero_gid(const union ib_gid *gid)
{
 return !memcmp(gid, &zgid, sizeof(*gid));
}
