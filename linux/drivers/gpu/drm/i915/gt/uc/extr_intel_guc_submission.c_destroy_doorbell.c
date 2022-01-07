
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int stage_id; int guc; } ;


 int DRM_ERROR (char*,int ,int) ;
 int GEM_BUG_ON (int) ;
 int GUC_DOORBELL_INVALID ;
 int __fini_doorbell (struct intel_guc_client*) ;
 int __guc_deallocate_doorbell (int ,int ) ;
 int __update_doorbell_desc (struct intel_guc_client*,int ) ;
 int has_doorbell (struct intel_guc_client*) ;

__attribute__((used)) static int destroy_doorbell(struct intel_guc_client *client)
{
 int ret;

 GEM_BUG_ON(!has_doorbell(client));

 __fini_doorbell(client);
 ret = __guc_deallocate_doorbell(client->guc, client->stage_id);
 if (ret)
  DRM_ERROR("Couldn't destroy client %u doorbell: %d\n",
     client->stage_id, ret);

 __update_doorbell_desc(client, GUC_DOORBELL_INVALID);

 return ret;
}
