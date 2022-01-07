
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dax_srcu ;
 int srcu_read_lock (int *) ;

int dax_read_lock(void)
{
 return srcu_read_lock(&dax_srcu);
}
