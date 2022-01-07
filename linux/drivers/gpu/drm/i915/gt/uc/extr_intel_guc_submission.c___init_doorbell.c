
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int dummy; } ;
struct guc_doorbell_info {scalar_t__ cookie; int db_status; } ;


 int GUC_DOORBELL_ENABLED ;
 struct guc_doorbell_info* __get_doorbell (struct intel_guc_client*) ;

__attribute__((used)) static void __init_doorbell(struct intel_guc_client *client)
{
 struct guc_doorbell_info *doorbell;

 doorbell = __get_doorbell(client);
 doorbell->db_status = GUC_DOORBELL_ENABLED;
 doorbell->cookie = 0;
}
