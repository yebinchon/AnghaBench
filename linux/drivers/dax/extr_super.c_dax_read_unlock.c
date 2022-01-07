
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dax_srcu ;
 int srcu_read_unlock (int *,int) ;

void dax_read_unlock(int id)
{
 srcu_read_unlock(&dax_srcu, id);
}
