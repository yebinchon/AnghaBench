
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct i2c_device_addr {struct drx39xxj_state* user_data; } ;
struct TYPE_6__ {TYPE_2__* stat; } ;
struct dtv_frontend_properties {TYPE_3__ cnr; } ;
struct drxj_data {int mirror; } ;
struct drx_demod_instance {struct i2c_device_addr* my_i2c_dev_addr; struct drxj_data* my_ext_attr; } ;
struct drx_channel {int mirror; } ;
struct TYPE_4__ {struct dtv_frontend_properties dtv_property_cache; } ;
struct drx39xxj_state {TYPE_1__ frontend; } ;
typedef int s32 ;
typedef enum drx_lock_status { ____Placeholder_drx_lock_status } drx_lock_status ;
struct TYPE_5__ {int svalue; } ;



 int DRXJ_DEMOD_LOCK ;
 scalar_t__ DRXJ_QAM_DEMOD_LOCK_EXT_WAITTIME ;
 scalar_t__ DRXJ_QAM_FEC_LOCK_WAITTIME ;
 scalar_t__ DRXJ_QAM_MAX_WAITTIME ;
 int DRX_LOCKED ;
 int DRX_MIRROR_AUTO ;
 int DRX_MIRROR_YES ;
 int DRX_NEVER_LOCK ;
 int DRX_NOT_LOCKED ;


 int ctrl_get_qam_sig_quality (struct drx_demod_instance*) ;
 int ctrl_lock_status (struct drx_demod_instance*,int*) ;
 int jiffies ;
 scalar_t__ jiffies_to_msecs (int ) ;
 int msleep (int) ;
 int pr_err (char*,int) ;
 int qam_flip_spec (struct drx_demod_instance*,struct drx_channel*) ;

__attribute__((used)) static int
qam256auto(struct drx_demod_instance *demod,
    struct drx_channel *channel,
    s32 tuner_freq_offset, enum drx_lock_status *lock_status)
{
 struct drxj_data *ext_attr = demod->my_ext_attr;
 struct i2c_device_addr *dev_addr = demod->my_i2c_dev_addr;
 struct drx39xxj_state *state = dev_addr->user_data;
 struct dtv_frontend_properties *p = &state->frontend.dtv_property_cache;
 int rc;
 u32 lck_state = 129;
 u32 start_time = 0;
 u32 d_locked_time = 0;
 u32 timeout_ofs = DRXJ_QAM_DEMOD_LOCK_EXT_WAITTIME;


 *lock_status = DRX_NOT_LOCKED;
 start_time = jiffies_to_msecs(jiffies);
 lck_state = 129;
 do {
  rc = ctrl_lock_status(demod, lock_status);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  switch (lck_state) {
  case 129:
   if (*lock_status == DRXJ_DEMOD_LOCK) {
    rc = ctrl_get_qam_sig_quality(demod);
    if (rc != 0) {
     pr_err("error %d\n", rc);
     goto rw_error;
    }
    if (p->cnr.stat[0].svalue > 26800) {
     lck_state = 130;
     timeout_ofs += DRXJ_QAM_DEMOD_LOCK_EXT_WAITTIME;
     d_locked_time = jiffies_to_msecs(jiffies);
    }
   }
   break;
  case 130:
   if (*lock_status == DRXJ_DEMOD_LOCK) {
    if ((channel->mirror == DRX_MIRROR_AUTO) &&
        ((jiffies_to_msecs(jiffies) - d_locked_time) >
         DRXJ_QAM_FEC_LOCK_WAITTIME)) {
     ext_attr->mirror = DRX_MIRROR_YES;
     rc = qam_flip_spec(demod, channel);
     if (rc != 0) {
      pr_err("error %d\n", rc);
      goto rw_error;
     }
     lck_state = 128;

     start_time = jiffies_to_msecs(jiffies);
     timeout_ofs = -DRXJ_QAM_MAX_WAITTIME / 2;
    }
   }
   break;
  case 128:
   break;
  default:
   break;
  }
  msleep(10);
 } while
     ((*lock_status < DRX_LOCKED) &&
      (*lock_status != DRX_NEVER_LOCK) &&
      ((jiffies_to_msecs(jiffies) - start_time) <
       (DRXJ_QAM_MAX_WAITTIME + timeout_ofs)));

 return 0;
rw_error:
 return rc;
}
