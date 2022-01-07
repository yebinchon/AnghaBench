
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eisa_driver {int driver; } ;


 int driver_unregister (int *) ;

void eisa_driver_unregister(struct eisa_driver *edrv)
{
 driver_unregister(&edrv->driver);
}
