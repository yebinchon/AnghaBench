
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union pvrdma_gid {int dummy; } pvrdma_gid ;
typedef union ib_gid {int dummy; } ib_gid ;


 int BUILD_BUG_ON (int) ;
 int memcpy (union pvrdma_gid*,union ib_gid const*,int) ;

void ib_gid_to_pvrdma(union pvrdma_gid *dst, const union ib_gid *src)
{
 BUILD_BUG_ON(sizeof(union pvrdma_gid) != sizeof(union ib_gid));
 memcpy(dst, src, sizeof(*src));
}
