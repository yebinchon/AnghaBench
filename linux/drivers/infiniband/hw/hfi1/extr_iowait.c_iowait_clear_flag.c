
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iowait {int flags; } ;


 int clear_bit (int ,int *) ;
 int trace_hfi1_iowait_clear (struct iowait*,int ) ;

inline void iowait_clear_flag(struct iowait *wait, u32 flag)
{
 trace_hfi1_iowait_clear(wait, flag);
 clear_bit(flag, &wait->flags);
}
