
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uobject {int usecnt; } ;
typedef enum rdma_lookup_mode { ____Placeholder_rdma_lookup_mode } rdma_lookup_mode ;





 int WARN_ON (int) ;
 int atomic_read (int *) ;

__attribute__((used)) static void assert_uverbs_usecnt(struct ib_uobject *uobj,
     enum rdma_lookup_mode mode)
{
}
