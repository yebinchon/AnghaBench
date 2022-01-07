
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl {int demod; } ;
struct MXL_HYDRA_DEMOD_ABORT_TUNE_T {int demod_id; } ;
typedef int abort_tune_cmd ;


 int BUILD_HYDRA_CMD (int ,int ,int,struct MXL_HYDRA_DEMOD_ABORT_TUNE_T*,int*) ;
 int MXL_CMD_WRITE ;
 int MXL_HYDRA_ABORT_TUNE_CMD ;
 int MXL_HYDRA_CMD_HEADER_SIZE ;
 int MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN ;
 int send_command (struct mxl*,int,int*) ;

__attribute__((used)) static int cfg_demod_abort_tune(struct mxl *state)
{
 struct MXL_HYDRA_DEMOD_ABORT_TUNE_T abort_tune_cmd;
 u8 cmd_size = sizeof(abort_tune_cmd);
 u8 cmd_buff[MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN];

 abort_tune_cmd.demod_id = state->demod;
 BUILD_HYDRA_CMD(MXL_HYDRA_ABORT_TUNE_CMD, MXL_CMD_WRITE,
   cmd_size, &abort_tune_cmd, cmd_buff);
 return send_command(state, cmd_size + MXL_HYDRA_CMD_HEADER_SIZE,
       &cmd_buff[0]);
}
