
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int drivers ;
 int platform_unregister_drivers (int ,int ) ;

__attribute__((used)) static void zx_drm_exit(void)
{
 platform_unregister_drivers(drivers, ARRAY_SIZE(drivers));
}
