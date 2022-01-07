
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int check_vmid; int trap_id; int cmd; void* mode; int wave_id; int simd_id; } ;
union SQ_CMD_BITS {TYPE_5__ bits; scalar_t__ u32All; } ;
struct TYPE_8__ {int sh_broadcast_writes; int se_broadcast_writes; int instance_broadcast_writes; int instance_index; int se_index; int sh_index; } ;
union GRBM_GFX_INDEX_BITS {TYPE_3__ bits; scalar_t__ u32All; } ;
struct TYPE_9__ {int HSACU; int ShaderEngine; int ShaderArray; int WaveId; int SIMD; } ;
struct HsaDbgWaveMsgAMDGen2 {TYPE_4__ ui32; } ;
struct TYPE_6__ {struct HsaDbgWaveMsgAMDGen2 WaveMsgInfoGen2; } ;
struct TYPE_7__ {TYPE_1__ DbgWaveMsg; } ;
struct dbg_wave_control_info {int mode; int operand; int trapId; TYPE_2__ dbgWave_msg; } ;


 int EINVAL ;
 int MAX_TRAPID ;
 int SQ_IND_CMD_CMD_DEBUG ;
 int SQ_IND_CMD_CMD_HALT ;
 int SQ_IND_CMD_CMD_KILL ;
 int SQ_IND_CMD_CMD_RESUME ;
 int SQ_IND_CMD_CMD_TRAP ;
 void* SQ_IND_CMD_MODE_BROADCAST ;
 void* SQ_IND_CMD_MODE_SINGLE ;

__attribute__((used)) static int dbgdev_wave_control_set_registers(
    struct dbg_wave_control_info *wac_info,
    union SQ_CMD_BITS *in_reg_sq_cmd,
    union GRBM_GFX_INDEX_BITS *in_reg_gfx_index)
{
 int status = 0;
 union SQ_CMD_BITS reg_sq_cmd;
 union GRBM_GFX_INDEX_BITS reg_gfx_index;
 struct HsaDbgWaveMsgAMDGen2 *pMsg;

 reg_sq_cmd.u32All = 0;
 reg_gfx_index.u32All = 0;
 pMsg = &wac_info->dbgWave_msg.DbgWaveMsg.WaveMsgInfoGen2;

 switch (wac_info->mode) {

 case 133:




  reg_sq_cmd.bits.check_vmid = 1;
  reg_sq_cmd.bits.simd_id = pMsg->ui32.SIMD;
  reg_sq_cmd.bits.wave_id = pMsg->ui32.WaveId;
  reg_sq_cmd.bits.mode = SQ_IND_CMD_MODE_SINGLE;

  reg_gfx_index.bits.sh_index = pMsg->ui32.ShaderArray;
  reg_gfx_index.bits.se_index = pMsg->ui32.ShaderEngine;
  reg_gfx_index.bits.instance_index = pMsg->ui32.HSACU;

  break;


 case 135:

  reg_gfx_index.bits.sh_broadcast_writes = 1;
  reg_gfx_index.bits.se_broadcast_writes = 1;
  reg_gfx_index.bits.instance_broadcast_writes = 1;

  reg_sq_cmd.bits.mode = SQ_IND_CMD_MODE_BROADCAST;

  break;


 case 134:

  reg_sq_cmd.bits.check_vmid = 1;
  reg_sq_cmd.bits.mode = SQ_IND_CMD_MODE_BROADCAST;

  reg_gfx_index.bits.sh_index = pMsg->ui32.ShaderArray;
  reg_gfx_index.bits.se_index = pMsg->ui32.ShaderEngine;
  reg_gfx_index.bits.instance_index = pMsg->ui32.HSACU;

  break;

 default:
  return -EINVAL;
 }

 switch (wac_info->operand) {
 case 131:
  reg_sq_cmd.bits.cmd = SQ_IND_CMD_CMD_HALT;
  break;

 case 129:
  reg_sq_cmd.bits.cmd = SQ_IND_CMD_CMD_RESUME;
  break;

 case 130:
  reg_sq_cmd.bits.cmd = SQ_IND_CMD_CMD_KILL;
  break;

 case 132:
  reg_sq_cmd.bits.cmd = SQ_IND_CMD_CMD_DEBUG;
  break;

 case 128:
  if (wac_info->trapId < MAX_TRAPID) {
   reg_sq_cmd.bits.cmd = SQ_IND_CMD_CMD_TRAP;
   reg_sq_cmd.bits.trap_id = wac_info->trapId;
  } else {
   status = -EINVAL;
  }
  break;

 default:
  status = -EINVAL;
  break;
 }

 if (status == 0) {
  *in_reg_sq_cmd = reg_sq_cmd;
  *in_reg_gfx_index = reg_gfx_index;
 }

 return status;
}
