
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {scalar_t__ unique_len; int * unique; } ;
struct drm_device {int dummy; } ;


 int kfree (int *) ;

__attribute__((used)) static void
drm_unset_busid(struct drm_device *dev,
  struct drm_master *master)
{
 kfree(master->unique);
 master->unique = ((void*)0);
 master->unique_len = 0;
}
