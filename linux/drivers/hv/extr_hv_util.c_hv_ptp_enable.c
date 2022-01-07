
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_request {int dummy; } ;
struct ptp_clock_info {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int hv_ptp_enable(struct ptp_clock_info *info,
    struct ptp_clock_request *request, int on)
{
 return -EOPNOTSUPP;
}
