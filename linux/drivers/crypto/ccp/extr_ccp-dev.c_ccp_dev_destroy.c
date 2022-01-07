
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sp_device {struct ccp_device* ccp_data; } ;
struct ccp_device {TYPE_2__* vdata; } ;
struct TYPE_4__ {TYPE_1__* perform; } ;
struct TYPE_3__ {int (* destroy ) (struct ccp_device*) ;} ;


 int stub1 (struct ccp_device*) ;

void ccp_dev_destroy(struct sp_device *sp)
{
 struct ccp_device *ccp = sp->ccp_data;

 if (!ccp)
  return;

 ccp->vdata->perform->destroy(ccp);
}
