
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ETIMEDOUT ;
 int KEY_SIZE ;
 int MISC_CFG_FW_CTRL ;
 int MISC_CFG_FW_CTRL_RSA_STATUS_SHIFT ;
 int MISC_CFG_FW_CTRL_RSA_STATUS_SMASK ;
 int MISC_CFG_RSA_CMD ;
 int MISC_CFG_RSA_SIGNATURE ;
 int MISC_ERR_CLEAR ;
 int MISC_ERR_STATUS ;
 int MISC_ERR_STATUS_MISC_FW_AUTH_FAILED_ERR_SMASK ;
 int MISC_ERR_STATUS_MISC_KEY_MISMATCH_ERR_SMASK ;
 int RSA_CMD_INIT ;
 int RSA_CMD_START ;
 int RSA_ENGINE_TIMEOUT ;
 int RSA_STATUS_DONE ;
 int RSA_STATUS_FAILED ;
 int RSA_STATUS_IDLE ;
 int dd_dev_err (struct hfi1_devdata*,char*,char const*) ;
 int dd_dev_warn (struct hfi1_devdata*,char*,char const*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;
 int write_rsa_data (struct hfi1_devdata*,int ,int const*,int ) ;

__attribute__((used)) static int run_rsa(struct hfi1_devdata *dd, const char *who,
     const u8 *signature)
{
 unsigned long timeout;
 u64 reg;
 u32 status;
 int ret = 0;


 write_rsa_data(dd, MISC_CFG_RSA_SIGNATURE, signature, KEY_SIZE);


 write_csr(dd, MISC_CFG_RSA_CMD, RSA_CMD_INIT);





 status = (read_csr(dd, MISC_CFG_FW_CTRL)
      & MISC_CFG_FW_CTRL_RSA_STATUS_SMASK)
        >> MISC_CFG_FW_CTRL_RSA_STATUS_SHIFT;
 if (status != RSA_STATUS_IDLE) {
  dd_dev_err(dd, "%s security engine not idle - giving up\n",
      who);
  return -EBUSY;
 }


 write_csr(dd, MISC_CFG_RSA_CMD, RSA_CMD_START);
 timeout = msecs_to_jiffies(RSA_ENGINE_TIMEOUT) + jiffies;
 while (1) {
  status = (read_csr(dd, MISC_CFG_FW_CTRL)
      & MISC_CFG_FW_CTRL_RSA_STATUS_SMASK)
        >> MISC_CFG_FW_CTRL_RSA_STATUS_SHIFT;

  if (status == RSA_STATUS_IDLE) {

   dd_dev_err(dd, "%s firmware security bad idle state\n",
       who);
   ret = -EINVAL;
   break;
  } else if (status == RSA_STATUS_DONE) {

   break;
  } else if (status == RSA_STATUS_FAILED) {

   ret = -EINVAL;
   break;
  }


  if (time_after(jiffies, timeout)) {





   dd_dev_err(dd, "%s firmware security time out\n", who);
   ret = -ETIMEDOUT;
   break;
  }

  msleep(20);
 }







 write_csr(dd, MISC_ERR_CLEAR,
    MISC_ERR_STATUS_MISC_FW_AUTH_FAILED_ERR_SMASK |
    MISC_ERR_STATUS_MISC_KEY_MISMATCH_ERR_SMASK);





 reg = read_csr(dd, MISC_ERR_STATUS);
 if (ret) {
  if (reg & MISC_ERR_STATUS_MISC_FW_AUTH_FAILED_ERR_SMASK)
   dd_dev_warn(dd, "%s firmware authorization failed\n",
        who);
  if (reg & MISC_ERR_STATUS_MISC_KEY_MISMATCH_ERR_SMASK)
   dd_dev_warn(dd, "%s firmware key mismatch\n", who);
 }

 return ret;
}
