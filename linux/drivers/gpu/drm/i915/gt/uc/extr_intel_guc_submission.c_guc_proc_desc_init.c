
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int priority; int stage_id; } ;
struct guc_process_desc {int priority; int wq_status; int wq_size_bytes; int stage_id; scalar_t__ db_base_addr; scalar_t__ wq_base_addr; } ;


 int GUC_WQ_SIZE ;
 int WQ_STATUS_ACTIVE ;
 int __get_process_desc (struct intel_guc_client*) ;
 struct guc_process_desc* memset (int ,int ,int) ;

__attribute__((used)) static void guc_proc_desc_init(struct intel_guc_client *client)
{
 struct guc_process_desc *desc;

 desc = memset(__get_process_desc(client), 0, sizeof(*desc));







 desc->wq_base_addr = 0;
 desc->db_base_addr = 0;

 desc->stage_id = client->stage_id;
 desc->wq_size_bytes = GUC_WQ_SIZE;
 desc->wq_status = WQ_STATUS_ACTIVE;
 desc->priority = client->priority;
}
