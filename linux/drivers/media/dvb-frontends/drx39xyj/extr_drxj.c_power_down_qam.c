
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxjscu_cmd {int command; int result_len; int * result; int * parameter; scalar_t__ parameter_len; int * member_4; int * member_3; int member_2; int member_1; int member_0; } ;
struct drx_demod_instance {struct drx_common_attr* my_common_attr; struct i2c_device_addr* my_i2c_dev_addr; } ;
struct drx_common_attr {int mpeg_cfg; } ;
struct drx_cfg_mpeg_output {int enable_mpeg_output; } ;
typedef int cfg_mpeg_output ;


 int FEC_COMM_EXEC_STOP ;
 int FEC_COMM_EXEC__A ;
 int IQM_CF_COMM_EXEC_STOP ;
 int IQM_CF_COMM_EXEC__A ;
 int IQM_COMM_EXEC_STOP ;
 int IQM_COMM_EXEC__A ;
 int IQM_FD_COMM_EXEC_STOP ;
 int IQM_FD_COMM_EXEC__A ;
 int IQM_FS_COMM_EXEC_STOP ;
 int IQM_FS_COMM_EXEC__A ;
 int IQM_RC_COMM_EXEC_STOP ;
 int IQM_RC_COMM_EXEC__A ;
 int IQM_RT_COMM_EXEC_STOP ;
 int IQM_RT_COMM_EXEC__A ;
 int QAM_COMM_EXEC_STOP ;
 int QAM_COMM_EXEC__A ;
 int SCU_RAM_COMMAND_CMD_DEMOD_STOP ;
 int SCU_RAM_COMMAND_STANDARD_QAM ;
 int ctrl_set_cfg_mpeg_output (struct drx_demod_instance*,struct drx_cfg_mpeg_output*) ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int ,int ) ;
 int memcpy (struct drx_cfg_mpeg_output*,int *,int) ;
 int pr_err (char*,int) ;
 int scu_command (struct i2c_device_addr*,struct drxjscu_cmd*) ;
 int set_iqm_af (struct drx_demod_instance*,int) ;

__attribute__((used)) static int power_down_qam(struct drx_demod_instance *demod, bool primary)
{
 struct drxjscu_cmd cmd_scu = { 0,
                      0,
                      0,
                     ((void*)0),
                     ((void*)0)
 };
 int rc;
 struct i2c_device_addr *dev_addr = demod->my_i2c_dev_addr;
 struct drx_cfg_mpeg_output cfg_mpeg_output;
 struct drx_common_attr *common_attr = demod->my_common_attr;
 u16 cmd_result = 0;






 rc = drxj_dap_write_reg16(dev_addr, FEC_COMM_EXEC__A, FEC_COMM_EXEC_STOP, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, QAM_COMM_EXEC__A, QAM_COMM_EXEC_STOP, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 cmd_scu.command = SCU_RAM_COMMAND_STANDARD_QAM |
     SCU_RAM_COMMAND_CMD_DEMOD_STOP;
 cmd_scu.parameter_len = 0;
 cmd_scu.result_len = 1;
 cmd_scu.parameter = ((void*)0);
 cmd_scu.result = &cmd_result;
 rc = scu_command(dev_addr, &cmd_scu);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 if (primary) {
  rc = drxj_dap_write_reg16(dev_addr, IQM_COMM_EXEC__A, IQM_COMM_EXEC_STOP, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = set_iqm_af(demod, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
 } else {
  rc = drxj_dap_write_reg16(dev_addr, IQM_FS_COMM_EXEC__A, IQM_FS_COMM_EXEC_STOP, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, IQM_FD_COMM_EXEC__A, IQM_FD_COMM_EXEC_STOP, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, IQM_RC_COMM_EXEC__A, IQM_RC_COMM_EXEC_STOP, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, IQM_RT_COMM_EXEC__A, IQM_RT_COMM_EXEC_STOP, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, IQM_CF_COMM_EXEC__A, IQM_CF_COMM_EXEC_STOP, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
 }

 memcpy(&cfg_mpeg_output, &common_attr->mpeg_cfg, sizeof(cfg_mpeg_output));
 cfg_mpeg_output.enable_mpeg_output = 0;

 rc = ctrl_set_cfg_mpeg_output(demod, &cfg_mpeg_output);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 return 0;
rw_error:
 return rc;
}
