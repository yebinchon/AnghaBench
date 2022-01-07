
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int dummy; } ;
struct guc_stage_desc {int dummy; } ;


 struct guc_stage_desc* __get_stage_desc (struct intel_guc_client*) ;
 int memset (struct guc_stage_desc*,int ,int) ;

__attribute__((used)) static void guc_stage_desc_fini(struct intel_guc_client *client)
{
 struct guc_stage_desc *desc;

 desc = __get_stage_desc(client);
 memset(desc, 0, sizeof(*desc));
}
