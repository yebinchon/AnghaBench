
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tmc_drvdata {struct coresight_device* csdev; } ;
struct coresight_device {TYPE_2__* pdata; } ;
struct TYPE_4__ {int nr_outport; TYPE_1__* conns; } ;
struct TYPE_3__ {struct coresight_device* child_dev; } ;


 int CONFIG_CORESIGHT_CATU ;
 int IS_ENABLED (int ) ;
 scalar_t__ coresight_is_catu_device (struct coresight_device*) ;

struct coresight_device *
tmc_etr_get_catu_device(struct tmc_drvdata *drvdata)
{
 int i;
 struct coresight_device *tmp, *etr = drvdata->csdev;

 if (!IS_ENABLED(CONFIG_CORESIGHT_CATU))
  return ((void*)0);

 for (i = 0; i < etr->pdata->nr_outport; i++) {
  tmp = etr->pdata->conns[i].child_dev;
  if (tmp && coresight_is_catu_device(tmp))
   return tmp;
 }

 return ((void*)0);
}
