
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fwnode; int * bus; int release; int parent; int groups; int * type; } ;
struct TYPE_7__ {int link_subtype; } ;
struct coresight_device {scalar_t__ type; int orphan; TYPE_2__ dev; int ops; TYPE_1__ subtype; TYPE_6__* pdata; int * refcnt; } ;
struct coresight_desc {scalar_t__ type; TYPE_6__* pdata; int name; int dev; int groups; int ops; TYPE_1__ subtype; } ;
typedef int atomic_t ;
struct TYPE_9__ {int nr_inport; int nr_outport; } ;


 int CORESIGHT_DEV_SUBTYPE_LINK_MERG ;
 int CORESIGHT_DEV_SUBTYPE_LINK_SPLIT ;
 scalar_t__ CORESIGHT_DEV_TYPE_LINK ;
 scalar_t__ CORESIGHT_DEV_TYPE_LINKSINK ;
 scalar_t__ CORESIGHT_DEV_TYPE_SINK ;
 int ENOMEM ;
 struct coresight_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int coresight_bustype ;
 int * coresight_dev_type ;
 int coresight_device_release ;
 int coresight_fixup_device_conns (struct coresight_device*) ;
 int coresight_fixup_orphan_conns (struct coresight_device*) ;
 int coresight_mutex ;
 int coresight_release_platform_data (TYPE_6__*) ;
 int dev_fwnode (int ) ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_register (TYPE_2__*) ;
 int device_unregister (TYPE_2__*) ;
 int etm_perf_add_symlink_sink (struct coresight_device*) ;
 int fwnode_handle_get (int ) ;
 int * kcalloc (int,int,int ) ;
 int kfree (struct coresight_device*) ;
 struct coresight_device* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_2__*) ;

struct coresight_device *coresight_register(struct coresight_desc *desc)
{
 int ret;
 int link_subtype;
 int nr_refcnts = 1;
 atomic_t *refcnts = ((void*)0);
 struct coresight_device *csdev;

 csdev = kzalloc(sizeof(*csdev), GFP_KERNEL);
 if (!csdev) {
  ret = -ENOMEM;
  goto err_out;
 }

 if (desc->type == CORESIGHT_DEV_TYPE_LINK ||
     desc->type == CORESIGHT_DEV_TYPE_LINKSINK) {
  link_subtype = desc->subtype.link_subtype;

  if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_MERG)
   nr_refcnts = desc->pdata->nr_inport;
  else if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT)
   nr_refcnts = desc->pdata->nr_outport;
 }

 refcnts = kcalloc(nr_refcnts, sizeof(*refcnts), GFP_KERNEL);
 if (!refcnts) {
  ret = -ENOMEM;
  goto err_free_csdev;
 }

 csdev->refcnt = refcnts;

 csdev->pdata = desc->pdata;

 csdev->type = desc->type;
 csdev->subtype = desc->subtype;
 csdev->ops = desc->ops;
 csdev->orphan = 0;

 csdev->dev.type = &coresight_dev_type[desc->type];
 csdev->dev.groups = desc->groups;
 csdev->dev.parent = desc->dev;
 csdev->dev.release = coresight_device_release;
 csdev->dev.bus = &coresight_bustype;




 csdev->dev.fwnode = fwnode_handle_get(dev_fwnode(desc->dev));
 dev_set_name(&csdev->dev, "%s", desc->name);

 ret = device_register(&csdev->dev);
 if (ret) {
  put_device(&csdev->dev);




  goto err_out;
 }

 if (csdev->type == CORESIGHT_DEV_TYPE_SINK ||
     csdev->type == CORESIGHT_DEV_TYPE_LINKSINK) {
  ret = etm_perf_add_symlink_sink(csdev);

  if (ret) {
   device_unregister(&csdev->dev);






   goto err_out;
  }
 }

 mutex_lock(&coresight_mutex);

 coresight_fixup_device_conns(csdev);
 coresight_fixup_orphan_conns(csdev);

 mutex_unlock(&coresight_mutex);

 return csdev;

err_free_csdev:
 kfree(csdev);
err_out:

 coresight_release_platform_data(desc->pdata);
 return ERR_PTR(ret);
}
