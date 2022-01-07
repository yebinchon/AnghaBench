
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int bs; int io_bs; } ;
struct dm_table {int dummy; } ;
struct dm_md_mempools {int io_bs; int bs; } ;


 int BUG_ON (int) ;
 int bioset_exit (int *) ;
 int bioset_init_from_src (int *,int *) ;
 scalar_t__ bioset_initialized (int *) ;
 scalar_t__ dm_table_bio_based (struct dm_table*) ;
 int dm_table_free_md_mempools (struct dm_table*) ;
 struct dm_md_mempools* dm_table_get_md_mempools (struct dm_table*) ;

__attribute__((used)) static int __bind_mempools(struct mapped_device *md, struct dm_table *t)
{
 struct dm_md_mempools *p = dm_table_get_md_mempools(t);
 int ret = 0;

 if (dm_table_bio_based(t)) {





  bioset_exit(&md->bs);
  bioset_exit(&md->io_bs);

 } else if (bioset_initialized(&md->bs)) {
  goto out;
 }

 BUG_ON(!p ||
        bioset_initialized(&md->bs) ||
        bioset_initialized(&md->io_bs));

 ret = bioset_init_from_src(&md->bs, &p->bs);
 if (ret)
  goto out;
 ret = bioset_init_from_src(&md->io_bs, &p->io_bs);
 if (ret)
  bioset_exit(&md->bs);
out:

 dm_table_free_md_mempools(t);
 return ret;
}
