
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int table_lock; int object_idr; } ;
struct drm_device {int dummy; } ;


 int idr_init_base (int *,int) ;
 int spin_lock_init (int *) ;

void
drm_gem_open(struct drm_device *dev, struct drm_file *file_private)
{
 idr_init_base(&file_private->object_idr, 1);
 spin_lock_init(&file_private->table_lock);
}
