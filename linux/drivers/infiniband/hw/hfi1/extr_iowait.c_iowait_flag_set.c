
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iowait {int flags; } ;


 int test_bit (int ,int *) ;

bool iowait_flag_set(struct iowait *wait, u32 flag)
{
 return test_bit(flag, &wait->flags);
}
