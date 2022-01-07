
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_connector_list_iter {int * conn; struct drm_device* dev; } ;


 int _RET_IP_ ;
 int connector_list_iter_dep_map ;
 int lock_acquire_shared_recursive (int *,int ,int,int *,int ) ;

void drm_connector_list_iter_begin(struct drm_device *dev,
       struct drm_connector_list_iter *iter)
{
 iter->dev = dev;
 iter->conn = ((void*)0);
 lock_acquire_shared_recursive(&connector_list_iter_dep_map, 0, 1, ((void*)0), _RET_IP_);
}
