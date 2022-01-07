
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x {int dummy; } ;


 int host1x_intr_stop (struct host1x*) ;

void host1x_intr_deinit(struct host1x *host)
{
 host1x_intr_stop(host);
}
