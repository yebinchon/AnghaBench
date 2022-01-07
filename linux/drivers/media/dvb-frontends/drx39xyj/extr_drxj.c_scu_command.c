
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxjscu_cmd {int parameter_len; int result_len; scalar_t__* result; int command; int * parameter; } ;
typedef scalar_t__ s16 ;


 int DRXJ_MAX_WAITTIME ;
 scalar_t__ DRX_SCU_READY ;
 int EINVAL ;
 int EIO ;
 int SCU_RAM_COMMAND__A ;
 scalar_t__ SCU_RAM_PARAM_0_RESULT_INVPAR ;
 scalar_t__ SCU_RAM_PARAM_0_RESULT_SIZE ;
 scalar_t__ SCU_RAM_PARAM_0_RESULT_UNKCMD ;
 scalar_t__ SCU_RAM_PARAM_0_RESULT_UNKSTD ;
 int SCU_RAM_PARAM_0__A ;
 int SCU_RAM_PARAM_1__A ;
 int SCU_RAM_PARAM_2__A ;
 int SCU_RAM_PARAM_3__A ;
 int SCU_RAM_PARAM_4__A ;
 int drxj_dap_read_reg16 (struct i2c_device_addr*,int ,scalar_t__*,int ) ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int ,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int pr_err (char*,int) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int scu_command(struct i2c_device_addr *dev_addr, struct drxjscu_cmd *cmd)
{
 int rc;
 u16 cur_cmd = 0;
 unsigned long timeout;


 if (cmd == ((void*)0))
  return -EINVAL;


 rc = drxj_dap_read_reg16(dev_addr, SCU_RAM_COMMAND__A, &cur_cmd, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 if (cur_cmd != DRX_SCU_READY)
  return -EIO;

 switch (cmd->parameter_len) {
 case 5:
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_PARAM_4__A, *(cmd->parameter + 4), 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
 case 4:
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_PARAM_3__A, *(cmd->parameter + 3), 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
 case 3:
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_PARAM_2__A, *(cmd->parameter + 2), 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
 case 2:
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_PARAM_1__A, *(cmd->parameter + 1), 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
 case 1:
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_PARAM_0__A, *(cmd->parameter + 0), 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
 case 0:

  break;
 default:

  return -EIO;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_COMMAND__A, cmd->command, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }


 timeout = jiffies + msecs_to_jiffies(DRXJ_MAX_WAITTIME);
 while (time_is_after_jiffies(timeout)) {
  rc = drxj_dap_read_reg16(dev_addr, SCU_RAM_COMMAND__A, &cur_cmd, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  if (cur_cmd == DRX_SCU_READY)
   break;
  usleep_range(1000, 2000);
 }

 if (cur_cmd != DRX_SCU_READY)
  return -EIO;


 if ((cmd->result_len > 0) && (cmd->result != ((void*)0))) {
  s16 err;

  switch (cmd->result_len) {
  case 4:
   rc = drxj_dap_read_reg16(dev_addr, SCU_RAM_PARAM_3__A, cmd->result + 3, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
  case 3:
   rc = drxj_dap_read_reg16(dev_addr, SCU_RAM_PARAM_2__A, cmd->result + 2, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
  case 2:
   rc = drxj_dap_read_reg16(dev_addr, SCU_RAM_PARAM_1__A, cmd->result + 1, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
  case 1:
   rc = drxj_dap_read_reg16(dev_addr, SCU_RAM_PARAM_0__A, cmd->result + 0, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
  case 0:

   break;
  default:

   return -EIO;
  }


  err = cmd->result[0];


  if ((err == (s16) SCU_RAM_PARAM_0_RESULT_UNKSTD)
      || (err == (s16) SCU_RAM_PARAM_0_RESULT_UNKCMD)
      || (err == (s16) SCU_RAM_PARAM_0_RESULT_INVPAR)
      || (err == (s16) SCU_RAM_PARAM_0_RESULT_SIZE)
      ) {
   return -EINVAL;
  }

  else if (err < 0)
   return -EIO;
  else
   return 0;
 }

 return 0;

rw_error:
 return rc;
}
