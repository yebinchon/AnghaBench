
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i2c_device_addr {int dummy; } ;
struct drxuio_data {int member_1; int value; int member_0; } ;
struct drxuio_cfg {scalar_t__ member_1; int member_0; } ;
struct drxj_data {int standard; scalar_t__ uio_sma_tx_mode; int reset_pkt_err_acc; int mirror; } ;
struct drx_demod_instance {scalar_t__ my_ext_attr; struct i2c_device_addr* my_i2c_dev_addr; } ;
struct drx_channel {int bandwidth; scalar_t__ symbolrate; int constellation; int interleavemode; int mirror; } ;
typedef scalar_t__ s32 ;
typedef enum drx_standard { ____Placeholder_drx_standard } drx_standard ;


 scalar_t__ DRXJ_QAM_SYMBOLRATE_MAX ;
 scalar_t__ DRXJ_QAM_SYMBOLRATE_MIN ;
 int DRX_MIRROR_AUTO ;
 int DRX_MIRROR_NO ;




 int DRX_STANDARD_NTSC ;

 int DRX_UIO1 ;
 scalar_t__ DRX_UIO_MODE_FIRMWARE_SAW ;
 int EINVAL ;
 int EIO ;
 int SCU_COMM_EXEC_ACTIVE ;
 int SCU_COMM_EXEC__A ;
 int ctrl_set_uio_cfg (struct drx_demod_instance*,struct drxuio_cfg*) ;
 int ctrl_uio_write (struct drx_demod_instance*,struct drxuio_data*) ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int ,int ) ;
 int pr_err (char*,int) ;
 int set_frequency (struct drx_demod_instance*,struct drx_channel*,scalar_t__) ;
 int set_qam_channel (struct drx_demod_instance*,struct drx_channel*,scalar_t__) ;
 int set_vsb (struct drx_demod_instance*) ;

__attribute__((used)) static int
ctrl_set_channel(struct drx_demod_instance *demod, struct drx_channel *channel)
{
 int rc;
 s32 tuner_freq_offset = 0;
 struct drxj_data *ext_attr = ((void*)0);
 struct i2c_device_addr *dev_addr = ((void*)0);
 enum drx_standard standard = 128;

 u32 min_symbol_rate = 0;
 u32 max_symbol_rate = 0;
 int bandwidth_temp = 0;
 int bandwidth = 0;


 if ((demod == ((void*)0)) || (channel == ((void*)0)))
  return -EINVAL;

 dev_addr = demod->my_i2c_dev_addr;
 ext_attr = (struct drxj_data *) demod->my_ext_attr;
 standard = ext_attr->standard;


 switch (standard) {
 case 132:

 case 131:
 case 130:
 case 129:

  break;
 case 128:
 default:
  return -EINVAL;
 }


 if ((standard == 130) ||
     (standard == 132) ||
     (standard == DRX_STANDARD_NTSC)) {
  switch (channel->bandwidth) {
  case 161:
  case 158:
   channel->bandwidth = 161;
   break;
  case 159:
  case 160:
  default:
   return -EINVAL;
  }
 }






 if ((standard == 131) ||
     (standard == 129)) {
  struct drxuio_cfg uio_cfg = { DRX_UIO1, DRX_UIO_MODE_FIRMWARE_SAW };
  int bw_rolloff_factor = 0;

  bw_rolloff_factor = (standard == 131) ? 115 : 113;
  min_symbol_rate = DRXJ_QAM_SYMBOLRATE_MIN;
  max_symbol_rate = DRXJ_QAM_SYMBOLRATE_MAX;

  rc = ctrl_set_uio_cfg(demod, &uio_cfg);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }

  if (channel->symbolrate < min_symbol_rate ||
      channel->symbolrate > max_symbol_rate) {
   return -EINVAL;
  }

  switch (channel->constellation) {
  case 155:
  case 153:
  case 152:
  case 156:
  case 154:
   bandwidth_temp = channel->symbolrate * bw_rolloff_factor;
   bandwidth = bandwidth_temp / 100;

   if ((bandwidth_temp % 100) >= 50)
    bandwidth++;

   if (bandwidth <= 6100000) {
    channel->bandwidth = 161;
   } else if ((bandwidth > 6100000)
       && (bandwidth <= 7100000)) {
    channel->bandwidth = 160;
   } else if (bandwidth > 7100000) {
    channel->bandwidth = 159;
   }
   break;
  default:
   return -EINVAL;
  }
 }




 if (standard == 130) {
  switch (channel->constellation) {
  case 157:
  case 154:
  case 152:
   break;
  default:
   return -EINVAL;
  }

  switch (channel->interleavemode) {
  case 148:
  case 147:
  case 146:
  case 135:
  case 145:
  case 137:
  case 144:
  case 138:
  case 143:
  case 134:
  case 142:
  case 141:
  case 140:
  case 139:
  case 136:
  case 150:
  case 149:
  case 133:
  case 151:
   break;
  default:
   return -EINVAL;
  }
 }

 if ((ext_attr->uio_sma_tx_mode) == DRX_UIO_MODE_FIRMWARE_SAW) {

  struct drxuio_data uio1 = { DRX_UIO1, 0 };

  switch (channel->bandwidth) {
  case 159:
   uio1.value = 1;
   break;
  case 160:
   uio1.value = 0;
   break;
  case 161:
   uio1.value = 0;
   break;
  case 158:
  default:
   return -EINVAL;
  }

  rc = ctrl_uio_write(demod, &uio1);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
 }

 rc = drxj_dap_write_reg16(dev_addr, SCU_COMM_EXEC__A, SCU_COMM_EXEC_ACTIVE, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 tuner_freq_offset = 0;


 switch (standard) {
 case 132:
  if (channel->mirror == DRX_MIRROR_AUTO)
   ext_attr->mirror = DRX_MIRROR_NO;
  else
   ext_attr->mirror = channel->mirror;
  rc = set_vsb(demod);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = set_frequency(demod, channel, tuner_freq_offset);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  break;

 case 131:
 case 130:
 case 129:
  rc = set_qam_channel(demod, channel, tuner_freq_offset);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  break;

 case 128:
 default:
  return -EIO;
 }


 ext_attr->reset_pkt_err_acc = 1;

 return 0;
rw_error:
 return rc;
}
