
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int PACKET_EGRESS_TIMEOUT ;
 int cclock_to_ns (struct hfi1_devdata*,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline void pause_for_credit_return(struct hfi1_devdata *dd)
{

 u32 usec = cclock_to_ns(dd, PACKET_EGRESS_TIMEOUT) / 1000;

 udelay(usec ? usec : 1);
}
