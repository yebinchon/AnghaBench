
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int stage_id; int guc; int doorbell_id; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int) ;
 int ENODEV ;
 int GUC_DOORBELL_INVALID ;
 scalar_t__ WARN_ON (int) ;
 int __fini_doorbell (struct intel_guc_client*) ;
 int __guc_allocate_doorbell (int ,int ) ;
 int __init_doorbell (struct intel_guc_client*) ;
 int __update_doorbell_desc (struct intel_guc_client*,int ) ;
 int has_doorbell (struct intel_guc_client*) ;

__attribute__((used)) static int create_doorbell(struct intel_guc_client *client)
{
 int ret;

 if (WARN_ON(!has_doorbell(client)))
  return -ENODEV;

 __update_doorbell_desc(client, client->doorbell_id);
 __init_doorbell(client);

 ret = __guc_allocate_doorbell(client->guc, client->stage_id);
 if (ret) {
  __fini_doorbell(client);
  __update_doorbell_desc(client, GUC_DOORBELL_INVALID);
  DRM_DEBUG_DRIVER("Couldn't create client %u doorbell: %d\n",
     client->stage_id, ret);
  return ret;
 }

 return 0;
}
