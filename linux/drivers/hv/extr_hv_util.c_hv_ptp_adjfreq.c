
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_info {int dummy; } ;
typedef int s32 ;


 int EOPNOTSUPP ;

__attribute__((used)) static int hv_ptp_adjfreq(struct ptp_clock_info *ptp, s32 delta)
{
 return -EOPNOTSUPP;
}
