
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;

__attribute__((used)) static __poll_t hp_sdc_rtc_poll(struct file *file, poll_table *wait)
{
        unsigned long l;

 l = 0;
        if (l != 0)
                return EPOLLIN | EPOLLRDNORM;
        return 0;
}
