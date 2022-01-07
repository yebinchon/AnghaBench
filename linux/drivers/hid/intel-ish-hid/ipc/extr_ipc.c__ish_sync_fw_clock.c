
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ishtp_device {int dummy; } ;


 int HZ ;
 int MNG_SYNC_FW_CLOCK ;
 int ipc_send_mng_msg (struct ishtp_device*,int ,int *,int) ;
 unsigned long jiffies ;
 int ktime_get_boottime () ;
 int ktime_to_us (int ) ;

__attribute__((used)) static void _ish_sync_fw_clock(struct ishtp_device *dev)
{
 static unsigned long prev_sync;
 uint64_t usec;

 if (prev_sync && jiffies - prev_sync < 20 * HZ)
  return;

 prev_sync = jiffies;
 usec = ktime_to_us(ktime_get_boottime());
 ipc_send_mng_msg(dev, MNG_SYNC_FW_CLOCK, &usec, sizeof(uint64_t));
}
