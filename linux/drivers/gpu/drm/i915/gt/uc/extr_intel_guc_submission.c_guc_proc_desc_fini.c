
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int dummy; } ;
struct guc_process_desc {int dummy; } ;


 struct guc_process_desc* __get_process_desc (struct intel_guc_client*) ;
 int memset (struct guc_process_desc*,int ,int) ;

__attribute__((used)) static void guc_proc_desc_fini(struct intel_guc_client *client)
{
 struct guc_process_desc *desc;

 desc = __get_process_desc(client);
 memset(desc, 0, sizeof(*desc));
}
