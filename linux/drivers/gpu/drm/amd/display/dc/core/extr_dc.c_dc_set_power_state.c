
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct kref {int dummy; } ;
struct display_mode_lib {int dummy; } ;
struct TYPE_9__ {int valid; } ;
struct TYPE_7__ {int (* init_sys_ctx ) (int ,struct dc*,TYPE_3__*) ;int (* init_hw ) (struct dc*) ;} ;
struct dc {TYPE_4__* current_state; TYPE_3__ vm_pa_config; int hwseq; TYPE_1__ hwss; } ;
typedef enum dc_acpi_cm_power_state { ____Placeholder_dc_acpi_cm_power_state } dc_acpi_cm_power_state ;
struct TYPE_8__ {struct display_mode_lib dml; } ;
struct TYPE_10__ {TYPE_2__ bw_ctx; struct kref refcount; int stream_count; } ;


 int ASSERT (int) ;

 int GFP_KERNEL ;
 int dc_resource_state_construct (struct dc*,TYPE_4__*) ;
 int dc_resource_state_destruct (TYPE_4__*) ;
 int kfree (struct display_mode_lib*) ;
 struct display_mode_lib* kzalloc (int,int ) ;
 int memcpy (struct display_mode_lib*,struct display_mode_lib*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (struct dc*) ;
 int stub2 (int ,struct dc*,TYPE_3__*) ;

void dc_set_power_state(
 struct dc *dc,
 enum dc_acpi_cm_power_state power_state)
{
 struct kref refcount;
 struct display_mode_lib *dml = kzalloc(sizeof(struct display_mode_lib),
      GFP_KERNEL);

 ASSERT(dml);
 if (!dml)
  return;

 switch (power_state) {
 case 128:
  dc_resource_state_construct(dc, dc->current_state);

  dc->hwss.init_hw(dc);
  break;
 default:
  ASSERT(dc->current_state->stream_count == 0);






  refcount = dc->current_state->refcount;

  memcpy(dml, &dc->current_state->bw_ctx.dml, sizeof(struct display_mode_lib));

  dc_resource_state_destruct(dc->current_state);
  memset(dc->current_state, 0,
    sizeof(*dc->current_state));

  dc->current_state->refcount = refcount;
  dc->current_state->bw_ctx.dml = *dml;

  break;
 }

 kfree(dml);
}
