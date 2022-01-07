
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drxj_data {int constellation; void* mirror; int standard; } ;
struct drx_demod_instance {int my_i2c_dev_addr; scalar_t__ my_ext_attr; } ;
struct drx_channel {int constellation; void* mirror; } ;
typedef int s32 ;
typedef enum drx_lock_status { ____Placeholder_drx_lock_status } drx_lock_status ;
 int DRX_LOCKED ;
 void* DRX_MIRROR_AUTO ;
 void* DRX_MIRROR_NO ;
 int DRX_NOT_LOCKED ;
 int DRX_STANDARD_ITU_B ;
 int DRX_STANDARD_ITU_C ;
 int EINVAL ;
 int QAM_SET_OP_ALL ;
 int QAM_SET_OP_CONSTELLATION ;
 int SCU_RAM_QAM_CTL_ENA_ACQ__M ;
 int SCU_RAM_QAM_CTL_ENA__A ;
 int SCU_RAM_QAM_FSM_STATE_TGT__A ;
 int drxj_dap_read_reg16 (int ,int ,int*,int ) ;
 int drxj_dap_write_reg16 (int ,int ,int,int ) ;
 int pr_err (char*,int) ;
 int qam256auto (struct drx_demod_instance*,struct drx_channel*,int ,int*) ;
 int qam64auto (struct drx_demod_instance*,struct drx_channel*,int ,int*) ;
 int set_qam (struct drx_demod_instance*,struct drx_channel*,int ,int ) ;

__attribute__((used)) static int
set_qam_channel(struct drx_demod_instance *demod,
        struct drx_channel *channel, s32 tuner_freq_offset)
{
 struct drxj_data *ext_attr = ((void*)0);
 int rc;
 enum drx_lock_status lock_status = DRX_NOT_LOCKED;
 bool auto_flag = 0;


 ext_attr = (struct drxj_data *) demod->my_ext_attr;


 switch (channel->constellation) {
 case 131:
 case 129:
 case 132:
  return -EINVAL;
 case 128:
 case 130:
  if (ext_attr->standard != DRX_STANDARD_ITU_B)
   return -EINVAL;

  ext_attr->constellation = channel->constellation;
  if (channel->mirror == DRX_MIRROR_AUTO)
   ext_attr->mirror = DRX_MIRROR_NO;
  else
   ext_attr->mirror = channel->mirror;

  rc = set_qam(demod, channel, tuner_freq_offset, QAM_SET_OP_ALL);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }

  if (channel->constellation == 128)
   rc = qam64auto(demod, channel, tuner_freq_offset,
           &lock_status);
  else
   rc = qam256auto(demod, channel, tuner_freq_offset,
     &lock_status);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  break;
 case 133:
  if (ext_attr->standard == DRX_STANDARD_ITU_B) {
   u16 qam_ctl_ena = 0;

   auto_flag = 1;


   channel->constellation = 130;
   ext_attr->constellation = 130;
   if (channel->mirror == DRX_MIRROR_AUTO)
    ext_attr->mirror = DRX_MIRROR_NO;
   else
    ext_attr->mirror = channel->mirror;
   rc = set_qam(demod, channel, tuner_freq_offset,
         QAM_SET_OP_ALL);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   rc = qam256auto(demod, channel, tuner_freq_offset,
     &lock_status);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }

   if (lock_status >= DRX_LOCKED) {
    channel->constellation = 133;
    break;
   }


   channel->constellation = 128;
   ext_attr->constellation = 128;
   if (channel->mirror == DRX_MIRROR_AUTO)
    ext_attr->mirror = DRX_MIRROR_NO;
   else
    ext_attr->mirror = channel->mirror;

   rc = drxj_dap_read_reg16(demod->my_i2c_dev_addr,
           SCU_RAM_QAM_CTL_ENA__A,
           &qam_ctl_ena, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr,
            SCU_RAM_QAM_CTL_ENA__A,
            qam_ctl_ena & ~SCU_RAM_QAM_CTL_ENA_ACQ__M, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr,
            SCU_RAM_QAM_FSM_STATE_TGT__A,
            0x2, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }

   rc = set_qam(demod, channel, tuner_freq_offset,
         QAM_SET_OP_CONSTELLATION);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr,
            SCU_RAM_QAM_CTL_ENA__A,
            qam_ctl_ena, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }

   rc = qam64auto(demod, channel, tuner_freq_offset,
           &lock_status);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }

   channel->constellation = 133;
  } else if (ext_attr->standard == DRX_STANDARD_ITU_C) {
   u16 qam_ctl_ena = 0;

   channel->constellation = 128;
   ext_attr->constellation = 128;
   auto_flag = 1;

   if (channel->mirror == DRX_MIRROR_AUTO)
    ext_attr->mirror = DRX_MIRROR_NO;
   else
    ext_attr->mirror = channel->mirror;
   rc = drxj_dap_read_reg16(demod->my_i2c_dev_addr,
           SCU_RAM_QAM_CTL_ENA__A,
           &qam_ctl_ena, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr,
            SCU_RAM_QAM_CTL_ENA__A,
            qam_ctl_ena & ~SCU_RAM_QAM_CTL_ENA_ACQ__M, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr,
            SCU_RAM_QAM_FSM_STATE_TGT__A,
            0x2, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }

   rc = set_qam(demod, channel, tuner_freq_offset,
         QAM_SET_OP_CONSTELLATION);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr,
            SCU_RAM_QAM_CTL_ENA__A,
            qam_ctl_ena, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   rc = qam64auto(demod, channel, tuner_freq_offset,
           &lock_status);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   channel->constellation = 133;
  } else {
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
rw_error:

 if (auto_flag)
  channel->constellation = 133;
 return rc;
}
