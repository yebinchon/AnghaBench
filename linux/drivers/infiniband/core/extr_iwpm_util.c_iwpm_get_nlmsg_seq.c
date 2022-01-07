
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nlmsg_seq; } ;


 int atomic_inc_return (int *) ;
 TYPE_1__ iwpm_admin ;

int iwpm_get_nlmsg_seq(void)
{
 return atomic_inc_return(&iwpm_admin.nlmsg_seq);
}
