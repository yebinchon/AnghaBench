
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int * debug ;
 int iclock_timestamp ;
 int ktime_get () ;

void
mISDN_init_clock(u_int *dp)
{
 debug = dp;
 iclock_timestamp = ktime_get();
}
