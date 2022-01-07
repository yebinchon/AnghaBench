
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drm_dev_put (void*) ;

__attribute__((used)) static void devm_drm_dev_init_release(void *data)
{
 drm_dev_put(data);
}
