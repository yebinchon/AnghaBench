
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int mcb_bus_type ;

__attribute__((used)) static int mcb_init(void)
{
 return bus_register(&mcb_bus_type);
}
