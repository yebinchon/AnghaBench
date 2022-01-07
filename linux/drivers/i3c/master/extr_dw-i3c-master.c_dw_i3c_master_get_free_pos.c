
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i3c_master {int free_pos; scalar_t__ maxdevs; } ;


 int ENOSPC ;
 int GENMASK (scalar_t__,int ) ;
 int ffs (int) ;

__attribute__((used)) static int dw_i3c_master_get_free_pos(struct dw_i3c_master *master)
{
 if (!(master->free_pos & GENMASK(master->maxdevs - 1, 0)))
  return -ENOSPC;

 return ffs(master->free_pos) - 1;
}
