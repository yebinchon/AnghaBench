
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int guid; } ;
struct vmbus_dynid {int node; TYPE_1__ id; } ;
struct TYPE_4__ {int lock; int list; } ;
struct hv_driver {int driver; TYPE_2__ dynids; } ;
typedef int guid_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int driver_attach (int *) ;
 struct vmbus_dynid* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int vmbus_add_dynid(struct hv_driver *drv, guid_t *guid)
{
 struct vmbus_dynid *dynid;

 dynid = kzalloc(sizeof(*dynid), GFP_KERNEL);
 if (!dynid)
  return -ENOMEM;

 dynid->id.guid = *guid;

 spin_lock(&drv->dynids.lock);
 list_add_tail(&dynid->node, &drv->dynids.list);
 spin_unlock(&drv->dynids.lock);

 return driver_attach(&drv->driver);
}
