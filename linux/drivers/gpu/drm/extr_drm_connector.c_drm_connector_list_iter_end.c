
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_config {int connector_list_lock; } ;
struct drm_connector_list_iter {scalar_t__ conn; TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_mode_config mode_config; } ;


 int _RET_IP_ ;
 int __drm_connector_put_safe (scalar_t__) ;
 int connector_list_iter_dep_map ;
 int lock_release (int *,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void drm_connector_list_iter_end(struct drm_connector_list_iter *iter)
{
 struct drm_mode_config *config = &iter->dev->mode_config;
 unsigned long flags;

 iter->dev = ((void*)0);
 if (iter->conn) {
  spin_lock_irqsave(&config->connector_list_lock, flags);
  __drm_connector_put_safe(iter->conn);
  spin_unlock_irqrestore(&config->connector_list_lock, flags);
 }
 lock_release(&connector_list_iter_dep_map, 0, _RET_IP_);
}
