
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_guc_client {int stage_id; TYPE_1__* guc; int vma; } ;
struct TYPE_2__ {int stage_ids; } ;


 int I915_VMA_RELEASE_MAP ;
 int i915_vma_unpin_and_release (int *,int ) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct intel_guc_client*) ;
 int unreserve_doorbell (struct intel_guc_client*) ;

__attribute__((used)) static void guc_client_free(struct intel_guc_client *client)
{
 unreserve_doorbell(client);
 i915_vma_unpin_and_release(&client->vma, I915_VMA_RELEASE_MAP);
 ida_simple_remove(&client->guc->stage_ids, client->stage_id);
 kfree(client);
}
