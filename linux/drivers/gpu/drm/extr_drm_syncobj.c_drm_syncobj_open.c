
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int syncobj_table_lock; int syncobj_idr; } ;


 int idr_init_base (int *,int) ;
 int spin_lock_init (int *) ;

void
drm_syncobj_open(struct drm_file *file_private)
{
 idr_init_base(&file_private->syncobj_idr, 1);
 spin_lock_init(&file_private->syncobj_table_lock);
}
