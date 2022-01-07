
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int dummy; } ;


 int create_doorbell (struct intel_guc_client*) ;
 int guc_proc_desc_fini (struct intel_guc_client*) ;
 int guc_proc_desc_init (struct intel_guc_client*) ;
 int guc_stage_desc_fini (struct intel_guc_client*) ;
 int guc_stage_desc_init (struct intel_guc_client*) ;

__attribute__((used)) static int __guc_client_enable(struct intel_guc_client *client)
{
 int ret;

 guc_proc_desc_init(client);
 guc_stage_desc_init(client);

 ret = create_doorbell(client);
 if (ret)
  goto fail;

 return 0;

fail:
 guc_stage_desc_fini(client);
 guc_proc_desc_fini(client);
 return ret;
}
