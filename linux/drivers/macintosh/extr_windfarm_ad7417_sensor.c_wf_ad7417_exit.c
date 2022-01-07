
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i2c_del_driver (int *) ;
 int wf_ad7417_driver ;

__attribute__((used)) static void wf_ad7417_exit(void)
{
 i2c_del_driver(&wf_ad7417_driver);
}
