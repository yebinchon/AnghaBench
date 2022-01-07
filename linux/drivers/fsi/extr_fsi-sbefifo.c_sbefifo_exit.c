
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsi_driver_unregister (int *) ;
 int sbefifo_drv ;

__attribute__((used)) static void sbefifo_exit(void)
{
 fsi_driver_unregister(&sbefifo_drv);
}
