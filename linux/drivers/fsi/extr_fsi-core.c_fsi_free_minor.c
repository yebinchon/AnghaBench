
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int MINOR (int ) ;
 int fsi_minor_ida ;
 int ida_simple_remove (int *,int ) ;

void fsi_free_minor(dev_t dev)
{
 ida_simple_remove(&fsi_minor_ida, MINOR(dev));
}
