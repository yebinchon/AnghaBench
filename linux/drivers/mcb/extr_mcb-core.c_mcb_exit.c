
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int ida_destroy (int *) ;
 int mcb_bus_type ;
 int mcb_ida ;

__attribute__((used)) static void mcb_exit(void)
{
 ida_destroy(&mcb_ida);
 bus_unregister(&mcb_bus_type);
}
