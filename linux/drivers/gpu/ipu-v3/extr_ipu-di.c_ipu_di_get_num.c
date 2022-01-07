
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_di {int id; } ;



int ipu_di_get_num(struct ipu_di *di)
{
 return di->id;
}
