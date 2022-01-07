
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct drxk_state {int dummy; } ;


 int DRXK_OFDM_TR_SHUTDOWN_TIMEOUT ;
 int EINVAL ;
 scalar_t__ SIO_OFDM_SH_OFDM_RING_ENABLE_OFF ;
 scalar_t__ SIO_OFDM_SH_OFDM_RING_ENABLE_ON ;
 int SIO_OFDM_SH_OFDM_RING_ENABLE__A ;
 scalar_t__ SIO_OFDM_SH_OFDM_RING_STATUS_DOWN ;
 scalar_t__ SIO_OFDM_SH_OFDM_RING_STATUS_ENABLED ;
 int SIO_OFDM_SH_OFDM_RING_STATUS__A ;
 int dprintk (int,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int pr_err (char*) ;
 int read16 (struct drxk_state*,int ,scalar_t__*) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int usleep_range (int,int) ;
 int write16 (struct drxk_state*,int ,scalar_t__) ;

__attribute__((used)) static int dvbt_enable_ofdm_token_ring(struct drxk_state *state, bool enable)
{
 int status;
 u16 data = 0;
 u16 desired_ctrl = SIO_OFDM_SH_OFDM_RING_ENABLE_ON;
 u16 desired_status = SIO_OFDM_SH_OFDM_RING_STATUS_ENABLED;
 unsigned long end;

 dprintk(1, "\n");

 if (!enable) {
  desired_ctrl = SIO_OFDM_SH_OFDM_RING_ENABLE_OFF;
  desired_status = SIO_OFDM_SH_OFDM_RING_STATUS_DOWN;
 }

 status = read16(state, SIO_OFDM_SH_OFDM_RING_STATUS__A, &data);
 if (status >= 0 && data == desired_status) {

  return status;
 }

 status = write16(state, SIO_OFDM_SH_OFDM_RING_ENABLE__A, desired_ctrl);

 end = jiffies + msecs_to_jiffies(DRXK_OFDM_TR_SHUTDOWN_TIMEOUT);
 do {
  status = read16(state, SIO_OFDM_SH_OFDM_RING_STATUS__A, &data);
  if ((status >= 0 && data == desired_status)
      || time_is_after_jiffies(end))
   break;
  usleep_range(1000, 2000);
 } while (1);
 if (data != desired_status) {
  pr_err("SIO not ready\n");
  return -EINVAL;
 }
 return status;
}
