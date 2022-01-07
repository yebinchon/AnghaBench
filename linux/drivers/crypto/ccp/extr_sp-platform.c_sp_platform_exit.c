
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int sp_platform_driver ;

void sp_platform_exit(void)
{
 platform_driver_unregister(&sp_platform_driver);
}
