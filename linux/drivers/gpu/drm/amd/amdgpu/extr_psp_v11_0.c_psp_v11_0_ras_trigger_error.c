
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ta_ras_trigger_error_input {int dummy; } ;
struct TYPE_4__ {struct ta_ras_trigger_error_input trigger_error; } ;
struct ta_ras_shared_memory {int ras_status; int cmd_id; TYPE_2__ ras_in_message; } ;
struct TYPE_3__ {scalar_t__ ras_shared_buf; int ras_initialized; } ;
struct psp_context {TYPE_1__ ras; } ;


 int EINVAL ;
 int TA_RAS_COMMAND__TRIGGER_ERROR ;
 int memset (struct ta_ras_shared_memory*,int ,int) ;
 int psp_ras_invoke (struct psp_context*,int ) ;

__attribute__((used)) static int psp_v11_0_ras_trigger_error(struct psp_context *psp,
  struct ta_ras_trigger_error_input *info)
{
 struct ta_ras_shared_memory *ras_cmd;
 int ret;

 if (!psp->ras.ras_initialized)
  return -EINVAL;

 ras_cmd = (struct ta_ras_shared_memory *)psp->ras.ras_shared_buf;
 memset(ras_cmd, 0, sizeof(struct ta_ras_shared_memory));

 ras_cmd->cmd_id = TA_RAS_COMMAND__TRIGGER_ERROR;
 ras_cmd->ras_in_message.trigger_error = *info;

 ret = psp_ras_invoke(psp, ras_cmd->cmd_id);
 if (ret)
  return -EINVAL;

 return ras_cmd->ras_status;
}
