
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_xrcd {int tgt_qp_list; int tgt_qp_mutex; int usecnt; int * inode; struct ib_device* device; } ;
struct TYPE_2__ {struct ib_xrcd* (* alloc_xrcd ) (struct ib_device*,int *) ;} ;
struct ib_device {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 struct ib_xrcd* ERR_PTR (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int IS_ERR (struct ib_xrcd*) ;
 int atomic_set (int *,int ) ;
 int mutex_init (int *) ;
 struct ib_xrcd* stub1 (struct ib_device*,int *) ;

struct ib_xrcd *__ib_alloc_xrcd(struct ib_device *device, const char *caller)
{
 struct ib_xrcd *xrcd;

 if (!device->ops.alloc_xrcd)
  return ERR_PTR(-EOPNOTSUPP);

 xrcd = device->ops.alloc_xrcd(device, ((void*)0));
 if (!IS_ERR(xrcd)) {
  xrcd->device = device;
  xrcd->inode = ((void*)0);
  atomic_set(&xrcd->usecnt, 0);
  mutex_init(&xrcd->tgt_qp_mutex);
  INIT_LIST_HEAD(&xrcd->tgt_qp_list);
 }

 return xrcd;
}
