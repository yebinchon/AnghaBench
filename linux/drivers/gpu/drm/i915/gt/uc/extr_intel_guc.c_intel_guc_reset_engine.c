
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_guc {int shared_data; TYPE_1__* execbuf_client; } ;
struct intel_engine_cs {scalar_t__ guc_id; } ;
struct TYPE_2__ {scalar_t__ stage_id; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int GEM_BUG_ON (int) ;
 scalar_t__ INTEL_GUC_ACTION_REQUEST_ENGINE_RESET ;
 scalar_t__ intel_guc_ggtt_offset (struct intel_guc*,int ) ;
 int intel_guc_send (struct intel_guc*,scalar_t__*,int ) ;

int intel_guc_reset_engine(struct intel_guc *guc,
      struct intel_engine_cs *engine)
{
 u32 data[7];

 GEM_BUG_ON(!guc->execbuf_client);

 data[0] = INTEL_GUC_ACTION_REQUEST_ENGINE_RESET;
 data[1] = engine->guc_id;
 data[2] = 0;
 data[3] = 0;
 data[4] = 0;
 data[5] = guc->execbuf_client->stage_id;
 data[6] = intel_guc_ggtt_offset(guc, guc->shared_data);

 return intel_guc_send(guc, data, ARRAY_SIZE(data));
}
