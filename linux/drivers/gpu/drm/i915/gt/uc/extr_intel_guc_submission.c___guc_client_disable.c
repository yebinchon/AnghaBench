
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int guc; } ;


 int __fini_doorbell (struct intel_guc_client*) ;
 int destroy_doorbell (struct intel_guc_client*) ;
 int guc_proc_desc_fini (struct intel_guc_client*) ;
 int guc_stage_desc_fini (struct intel_guc_client*) ;
 scalar_t__ intel_guc_is_running (int ) ;

__attribute__((used)) static void __guc_client_disable(struct intel_guc_client *client)
{





 if (intel_guc_is_running(client->guc))
  destroy_doorbell(client);
 else
  __fini_doorbell(client);

 guc_stage_desc_fini(client);
 guc_proc_desc_fini(client);
}
