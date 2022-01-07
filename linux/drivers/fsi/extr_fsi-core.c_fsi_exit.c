
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSI_CHAR_MAX_DEVICES ;
 int bus_unregister (int *) ;
 int fsi_base_dev ;
 int fsi_bus_type ;
 int fsi_minor_ida ;
 int ida_destroy (int *) ;
 int unregister_chrdev_region (int ,int ) ;

__attribute__((used)) static void fsi_exit(void)
{
 bus_unregister(&fsi_bus_type);
 unregister_chrdev_region(fsi_base_dev, FSI_CHAR_MAX_DEVICES);
 ida_destroy(&fsi_minor_ida);
}
