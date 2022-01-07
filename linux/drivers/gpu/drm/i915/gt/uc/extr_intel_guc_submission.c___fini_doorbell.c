
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_guc_client {int guc; int doorbell_id; } ;
struct guc_doorbell_info {int db_status; } ;


 int GUC_DOORBELL_DISABLED ;
 int WARN_ONCE (int,char*) ;
 int __doorbell_valid (int ,int ) ;
 struct guc_doorbell_info* __get_doorbell (struct intel_guc_client*) ;
 scalar_t__ wait_for_us (int,int) ;

__attribute__((used)) static void __fini_doorbell(struct intel_guc_client *client)
{
 struct guc_doorbell_info *doorbell;
 u16 db_id = client->doorbell_id;

 doorbell = __get_doorbell(client);
 doorbell->db_status = GUC_DOORBELL_DISABLED;





 if (wait_for_us(!__doorbell_valid(client->guc, db_id), 10))
  WARN_ONCE(1, "Doorbell never became invalid after disable\n");
}
