
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int edac_subsys ;

__attribute__((used)) static void edac_subsys_exit(void)
{
 bus_unregister(&edac_subsys);
}
