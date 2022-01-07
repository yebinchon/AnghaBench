
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct ptp_clock_info {int dummy; } ;


 struct timespec64 hv_get_adj_host_time () ;

__attribute__((used)) static int hv_ptp_gettime(struct ptp_clock_info *info, struct timespec64 *ts)
{
 *ts = hv_get_adj_host_time();

 return 0;
}
