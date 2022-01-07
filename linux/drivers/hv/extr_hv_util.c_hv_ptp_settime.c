
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct ptp_clock_info {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int hv_ptp_settime(struct ptp_clock_info *p, const struct timespec64 *ts)
{
 return -EOPNOTSUPP;
}
