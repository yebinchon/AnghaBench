
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_md_mempools {int io_bs; int bs; } ;


 int bioset_exit (int *) ;
 int kfree (struct dm_md_mempools*) ;

void dm_free_md_mempools(struct dm_md_mempools *pools)
{
 if (!pools)
  return;

 bioset_exit(&pools->bs);
 bioset_exit(&pools->io_bs);

 kfree(pools);
}
