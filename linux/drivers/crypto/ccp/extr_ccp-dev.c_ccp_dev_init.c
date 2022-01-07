
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sp_device {struct ccp_device* ccp_data; scalar_t__ io_map; int use_tasklet; TYPE_1__* dev_vdata; struct device* dev; } ;
struct device {int dummy; } ;
struct ccp_vdata {TYPE_2__* perform; int (* setup ) (struct ccp_device*) ;scalar_t__ offset; int version; } ;
struct ccp_device {struct ccp_vdata* vdata; scalar_t__ io_regs; int use_tasklet; scalar_t__ max_q_count; } ;
struct TYPE_4__ {int (* init ) (struct ccp_device*) ;} ;
struct TYPE_3__ {scalar_t__ ccp_vdata; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ MAX_HW_QUEUES ;
 scalar_t__ atomic_inc_return (int *) ;
 struct ccp_device* ccp_alloc_struct (struct sp_device*) ;
 int dev_count ;
 int dev_err (struct device*,char*) ;
 int dev_notice (struct device*,char*) ;
 scalar_t__ max_devs ;
 scalar_t__ nqueues ;
 int stub1 (struct ccp_device*) ;
 int stub2 (struct ccp_device*) ;

int ccp_dev_init(struct sp_device *sp)
{
 struct device *dev = sp->dev;
 struct ccp_device *ccp;
 int ret;





 if (atomic_inc_return(&dev_count) > max_devs)
  return 0;

 ret = -ENOMEM;
 ccp = ccp_alloc_struct(sp);
 if (!ccp)
  goto e_err;
 sp->ccp_data = ccp;

 if (!nqueues || (nqueues > MAX_HW_QUEUES))
  ccp->max_q_count = MAX_HW_QUEUES;
 else
  ccp->max_q_count = nqueues;

 ccp->vdata = (struct ccp_vdata *)sp->dev_vdata->ccp_vdata;
 if (!ccp->vdata || !ccp->vdata->version) {
  ret = -ENODEV;
  dev_err(dev, "missing driver data\n");
  goto e_err;
 }

 ccp->use_tasklet = sp->use_tasklet;

 ccp->io_regs = sp->io_map + ccp->vdata->offset;
 if (ccp->vdata->setup)
  ccp->vdata->setup(ccp);

 ret = ccp->vdata->perform->init(ccp);
 if (ret)
  goto e_err;

 dev_notice(dev, "ccp enabled\n");

 return 0;

e_err:
 sp->ccp_data = ((void*)0);

 dev_notice(dev, "ccp initialization failed\n");

 return ret;
}
