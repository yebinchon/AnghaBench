
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_icm_table {int obj_size; } ;
struct mthca_dev {int dummy; } ;


 int MTHCA_TABLE_CHUNK_SIZE ;
 int mthca_table_get (struct mthca_dev*,struct mthca_icm_table*,int) ;
 int mthca_table_put (struct mthca_dev*,struct mthca_icm_table*,int) ;

int mthca_table_get_range(struct mthca_dev *dev, struct mthca_icm_table *table,
     int start, int end)
{
 int inc = MTHCA_TABLE_CHUNK_SIZE / table->obj_size;
 int i, err;

 for (i = start; i <= end; i += inc) {
  err = mthca_table_get(dev, table, i);
  if (err)
   goto fail;
 }

 return 0;

fail:
 while (i > start) {
  i -= inc;
  mthca_table_put(dev, table, i);
 }

 return err;
}
