
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int dummy; } ;


 int ICP_QAT_FW_CONSTANTS_CFG ;
 int ICP_QAT_FW_INIT_ME ;
 int adf_send_admin_cmd (struct adf_accel_dev*,int ) ;

int adf_send_admin_init(struct adf_accel_dev *accel_dev)
{
 int ret = adf_send_admin_cmd(accel_dev, ICP_QAT_FW_INIT_ME);

 if (ret)
  return ret;
 return adf_send_admin_cmd(accel_dev, ICP_QAT_FW_CONSTANTS_CFG);
}
