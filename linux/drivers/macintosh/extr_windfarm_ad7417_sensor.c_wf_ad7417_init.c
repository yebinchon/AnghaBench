
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int i2c_add_driver (int *) ;
 int of_machine_is_compatible (char*) ;
 int wf_ad7417_driver ;

__attribute__((used)) static int wf_ad7417_init(void)
{

 if (!of_machine_is_compatible("PowerMac7,2") &&
     !of_machine_is_compatible("PowerMac7,3") &&
     !of_machine_is_compatible("RackMac3,1"))
  return -ENODEV;

 return i2c_add_driver(&wf_ad7417_driver);
}
