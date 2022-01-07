
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sp_device {TYPE_1__* dev_vdata; } ;
struct TYPE_2__ {scalar_t__ psp_vdata; scalar_t__ ccp_vdata; } ;


 int ccp_dev_init (struct sp_device*) ;
 int psp_dev_init (struct sp_device*) ;
 int sp_add_device (struct sp_device*) ;

int sp_init(struct sp_device *sp)
{
 sp_add_device(sp);

 if (sp->dev_vdata->ccp_vdata)
  ccp_dev_init(sp);

 if (sp->dev_vdata->psp_vdata)
  psp_dev_init(sp);
 return 0;
}
