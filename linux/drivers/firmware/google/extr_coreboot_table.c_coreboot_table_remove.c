
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int bus_unregister (int *) ;
 int coreboot_bus_type ;

__attribute__((used)) static int coreboot_table_remove(struct platform_device *pdev)
{
 bus_unregister(&coreboot_bus_type);
 return 0;
}
