
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_wc {int dummy; } ;
struct ib_mad_agent {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;

int ib_process_mad_wc(struct ib_mad_agent *mad_agent,
        struct ib_wc *wc)
{
 dev_err(&mad_agent->device->dev,
  "ib_process_mad_wc() not implemented yet\n");
 return 0;
}
