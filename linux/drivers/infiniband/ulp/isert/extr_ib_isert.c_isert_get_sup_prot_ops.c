
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isert_device {scalar_t__ pi_capable; } ;
struct isert_conn {int pi_support; struct isert_device* device; } ;
struct iscsi_conn {TYPE_2__* tpg; struct isert_conn* context; } ;
typedef enum target_prot_op { ____Placeholder_target_prot_op } target_prot_op ;
struct TYPE_3__ {scalar_t__ t10_pi; } ;
struct TYPE_4__ {TYPE_1__ tpg_attrib; } ;


 int TARGET_PROT_ALL ;
 int TARGET_PROT_NORMAL ;
 int isert_info (char*,struct isert_conn*) ;

__attribute__((used)) static enum target_prot_op
isert_get_sup_prot_ops(struct iscsi_conn *conn)
{
 struct isert_conn *isert_conn = conn->context;
 struct isert_device *device = isert_conn->device;

 if (conn->tpg->tpg_attrib.t10_pi) {
  if (device->pi_capable) {
   isert_info("conn %p PI offload enabled\n", isert_conn);
   isert_conn->pi_support = 1;
   return TARGET_PROT_ALL;
  }
 }

 isert_info("conn %p PI offload disabled\n", isert_conn);
 isert_conn->pi_support = 0;

 return TARGET_PROT_NORMAL;
}
