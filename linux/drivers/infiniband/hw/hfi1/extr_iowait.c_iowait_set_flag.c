
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iowait {int flags; } ;


 int set_bit (int ,int *) ;
 int trace_hfi1_iowait_set (struct iowait*,int ) ;

void iowait_set_flag(struct iowait *wait, u32 flag)
{
 trace_hfi1_iowait_set(wait, flag);
 set_bit(flag, &wait->flags);
}
