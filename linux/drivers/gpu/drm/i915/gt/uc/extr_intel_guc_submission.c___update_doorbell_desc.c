
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_guc_client {int dummy; } ;
struct guc_stage_desc {int db_id; } ;


 struct guc_stage_desc* __get_stage_desc (struct intel_guc_client*) ;

__attribute__((used)) static void __update_doorbell_desc(struct intel_guc_client *client, u16 new_id)
{
 struct guc_stage_desc *desc;


 desc = __get_stage_desc(client);
 desc->db_id = new_id;
}
