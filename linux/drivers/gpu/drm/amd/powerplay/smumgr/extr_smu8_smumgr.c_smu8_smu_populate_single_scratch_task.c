
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_4__ {scalar_t__ kaddr; } ;
struct smu8_smumgr {size_t scratch_buffer_length; TYPE_3__* scratch_buffer; int toc_entry_used_count; TYPE_1__ toc_buffer; } ;
struct smu8_ih_meta_data {int command; } ;
struct pp_hwmgr {struct smu8_smumgr* smu_backend; } ;
struct TOC {struct SMU_Task* tasks; } ;
struct TYPE_5__ {int high; int low; } ;
struct SMU_Task {size_t type; int size_bytes; TYPE_2__ addr; int next; int arg; } ;
typedef enum smu8_scratch_entry { ____Placeholder_smu8_scratch_entry } smu8_scratch_entry ;
struct TYPE_6__ {int firmware_ID; scalar_t__ kaddr; int data_size; int mc_addr; } ;


 int EINVAL ;
 int END_OF_TASK_LIST ;
 int METADATA_CMD_MODE0 ;
 int METADATA_PERFORM_ON_LOAD ;
 int SMU8_SCRATCH_ENTRY_DATA_ID_IH_REGISTERS ;
 int lower_32_bits (int ) ;
 int pr_err (char*) ;
 int smu8_translate_firmware_enum_to_arg (struct pp_hwmgr*,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int smu8_smu_populate_single_scratch_task(
   struct pp_hwmgr *hwmgr,
   enum smu8_scratch_entry fw_enum,
   uint8_t type, bool is_last)
{
 uint8_t i;
 struct smu8_smumgr *smu8_smu = hwmgr->smu_backend;
 struct TOC *toc = (struct TOC *)smu8_smu->toc_buffer.kaddr;
 struct SMU_Task *task = &toc->tasks[smu8_smu->toc_entry_used_count++];

 task->type = type;
 task->arg = smu8_translate_firmware_enum_to_arg(hwmgr, fw_enum);
 task->next = is_last ? END_OF_TASK_LIST : smu8_smu->toc_entry_used_count;

 for (i = 0; i < smu8_smu->scratch_buffer_length; i++)
  if (smu8_smu->scratch_buffer[i].firmware_ID == fw_enum)
   break;

 if (i >= smu8_smu->scratch_buffer_length) {
  pr_err("Invalid Firmware Type\n");
  return -EINVAL;
 }

 task->addr.low = lower_32_bits(smu8_smu->scratch_buffer[i].mc_addr);
 task->addr.high = upper_32_bits(smu8_smu->scratch_buffer[i].mc_addr);
 task->size_bytes = smu8_smu->scratch_buffer[i].data_size;

 if (SMU8_SCRATCH_ENTRY_DATA_ID_IH_REGISTERS == fw_enum) {
  struct smu8_ih_meta_data *pIHReg_restore =
       (struct smu8_ih_meta_data *)smu8_smu->scratch_buffer[i].kaddr;
  pIHReg_restore->command =
   METADATA_CMD_MODE0 | METADATA_PERFORM_ON_LOAD;
 }

 return 0;
}
