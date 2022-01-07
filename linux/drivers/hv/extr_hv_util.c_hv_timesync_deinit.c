
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adj_time_work ;
 int cancel_work_sync (int *) ;
 scalar_t__ hv_ptp_clock ;
 int ptp_clock_unregister (scalar_t__) ;

__attribute__((used)) static void hv_timesync_deinit(void)
{
 if (hv_ptp_clock)
  ptp_clock_unregister(hv_ptp_clock);
 cancel_work_sync(&adj_time_work);
}
