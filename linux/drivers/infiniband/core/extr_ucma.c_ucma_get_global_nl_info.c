
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_client_nl_info {int cdev; int abi; } ;
struct TYPE_2__ {int this_device; } ;


 int RDMA_USER_CM_ABI_VERSION ;
 TYPE_1__ ucma_misc ;

__attribute__((used)) static int ucma_get_global_nl_info(struct ib_client_nl_info *res)
{
 res->abi = RDMA_USER_CM_ABI_VERSION;
 res->cdev = ucma_misc.this_device;
 return 0;
}
