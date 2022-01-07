
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_util_service {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int ENODEV ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR_OR_NULL (int *) ;
 int PTR_ERR (int *) ;
 int adj_time_work ;
 TYPE_1__ host_ts ;
 int * hv_ptp_clock ;
 int hv_set_host_time ;
 int hyperv_cs ;
 int pr_err (char*,int ) ;
 int * ptp_clock_register (int *,int *) ;
 int ptp_hyperv_info ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int hv_timesync_init(struct hv_util_service *srv)
{

 if (!hyperv_cs)
  return -ENODEV;

 spin_lock_init(&host_ts.lock);

 INIT_WORK(&adj_time_work, hv_set_host_time);






 hv_ptp_clock = ptp_clock_register(&ptp_hyperv_info, ((void*)0));
 if (IS_ERR_OR_NULL(hv_ptp_clock)) {
  pr_err("cannot register PTP clock: %ld\n",
         PTR_ERR(hv_ptp_clock));
  hv_ptp_clock = ((void*)0);
 }

 return 0;
}
