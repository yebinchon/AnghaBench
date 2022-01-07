
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_device {int dummy; } ;
struct ib_cm_id {scalar_t__ cm_handler; scalar_t__ context; } ;
struct cm_id_private {struct ib_cm_id id; int listen_sharecount; int refcount; } ;
typedef scalar_t__ ib_cm_handler ;
typedef int __be64 ;
struct TYPE_2__ {int lock; } ;


 int EINVAL ;
 struct ib_cm_id* ERR_PTR (int) ;
 int IB_CM_ASSIGN_SERVICE_ID ;
 scalar_t__ IS_ERR (struct ib_cm_id*) ;
 int __ib_cm_listen (struct ib_cm_id*,int ,int ) ;
 int atomic_inc (int *) ;
 TYPE_1__ cm ;
 struct cm_id_private* cm_find_listen (struct ib_device*,int ) ;
 struct ib_cm_id* ib_create_cm_id (struct ib_device*,scalar_t__,int *) ;
 int ib_destroy_cm_id (struct ib_cm_id*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct ib_cm_id *ib_cm_insert_listen(struct ib_device *device,
         ib_cm_handler cm_handler,
         __be64 service_id)
{
 struct cm_id_private *cm_id_priv;
 struct ib_cm_id *cm_id;
 unsigned long flags;
 int err = 0;


 cm_id = ib_create_cm_id(device, cm_handler, ((void*)0));
 if (IS_ERR(cm_id))
  return cm_id;

 spin_lock_irqsave(&cm.lock, flags);

 if (service_id == IB_CM_ASSIGN_SERVICE_ID)
  goto new_id;


 cm_id_priv = cm_find_listen(device, service_id);
 if (cm_id_priv) {
  if (cm_id->cm_handler != cm_handler || cm_id->context) {


   spin_unlock_irqrestore(&cm.lock, flags);
   return ERR_PTR(-EINVAL);
  }
  atomic_inc(&cm_id_priv->refcount);
  ++cm_id_priv->listen_sharecount;
  spin_unlock_irqrestore(&cm.lock, flags);

  ib_destroy_cm_id(cm_id);
  cm_id = &cm_id_priv->id;
  return cm_id;
 }

new_id:

 err = __ib_cm_listen(cm_id, service_id, 0);

 spin_unlock_irqrestore(&cm.lock, flags);

 if (err) {
  ib_destroy_cm_id(cm_id);
  return ERR_PTR(err);
 }
 return cm_id;
}
