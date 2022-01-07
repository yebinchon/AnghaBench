
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coresight_device {TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ nr_inport; } ;


 int bus_for_each_dev (int *,int *,struct coresight_device*,int ) ;
 int coresight_bustype ;
 int coresight_remove_match ;

__attribute__((used)) static void coresight_remove_conns(struct coresight_device *csdev)
{






 if (csdev->pdata->nr_inport)
  bus_for_each_dev(&coresight_bustype, ((void*)0),
     csdev, coresight_remove_match);
}
