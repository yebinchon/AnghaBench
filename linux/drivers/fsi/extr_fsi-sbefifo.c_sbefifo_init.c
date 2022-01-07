
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsi_driver_register (int *) ;
 int sbefifo_drv ;

__attribute__((used)) static int sbefifo_init(void)
{
 return fsi_driver_register(&sbefifo_drv);
}
