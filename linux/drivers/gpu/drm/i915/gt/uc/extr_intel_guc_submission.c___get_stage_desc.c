
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_guc_client {size_t stage_id; TYPE_1__* guc; } ;
struct guc_stage_desc {int dummy; } ;
struct TYPE_2__ {struct guc_stage_desc* stage_desc_pool_vaddr; } ;



__attribute__((used)) static struct guc_stage_desc *__get_stage_desc(struct intel_guc_client *client)
{
 struct guc_stage_desc *base = client->guc->stage_desc_pool_vaddr;

 return &base[client->stage_id];
}
