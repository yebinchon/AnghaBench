
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ida_destroy (int *) ;
 int occ_driver ;
 int occ_ida ;
 int platform_driver_unregister (int *) ;

__attribute__((used)) static void occ_exit(void)
{
 platform_driver_unregister(&occ_driver);

 ida_destroy(&occ_ida);
}
