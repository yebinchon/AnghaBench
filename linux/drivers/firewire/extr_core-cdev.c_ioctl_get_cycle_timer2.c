
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_cdev_get_cycle_timer2 {int clk_id; int cycle_timer; int tv_nsec; int tv_sec; } ;
union ioctl_arg {struct fw_cdev_get_cycle_timer2 get_cycle_timer2; } ;
typedef int u32 ;
struct timespec64 {int tv_nsec; int tv_sec; int member_1; int member_0; } ;
struct fw_card {TYPE_2__* driver; } ;
struct client {TYPE_1__* device; } ;
struct TYPE_4__ {int (* read_csr ) (struct fw_card*,int ) ;} ;
struct TYPE_3__ {struct fw_card* card; } ;





 int CSR_CYCLE_TIME ;
 int EINVAL ;
 int ktime_get_raw_ts64 (struct timespec64*) ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int ktime_get_ts64 (struct timespec64*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int stub1 (struct fw_card*,int ) ;

__attribute__((used)) static int ioctl_get_cycle_timer2(struct client *client, union ioctl_arg *arg)
{
 struct fw_cdev_get_cycle_timer2 *a = &arg->get_cycle_timer2;
 struct fw_card *card = client->device->card;
 struct timespec64 ts = {0, 0};
 u32 cycle_time;
 int ret = 0;

 local_irq_disable();

 cycle_time = card->driver->read_csr(card, CSR_CYCLE_TIME);

 switch (a->clk_id) {
 case 128: ktime_get_real_ts64(&ts); break;
 case 130: ktime_get_ts64(&ts); break;
 case 129: ktime_get_raw_ts64(&ts); break;
 default:
  ret = -EINVAL;
 }

 local_irq_enable();

 a->tv_sec = ts.tv_sec;
 a->tv_nsec = ts.tv_nsec;
 a->cycle_timer = cycle_time;

 return ret;
}
