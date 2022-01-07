
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_sg_table {int table_daddr; } ;
struct tmc_drvdata {int dummy; } ;
struct etr_buf {int hwaddr; struct catu_etr_buf* private; int mode; int size; } ;
struct coresight_device {int dev; } ;
struct catu_etr_buf {int sladdr; struct tmc_sg_table* catu_table; } ;


 int CATU_DEFAULT_INADDR ;
 int ENODEV ;
 int ENOMEM ;
 int ETR_MODE_CATU ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tmc_sg_table*) ;
 int PTR_ERR (struct tmc_sg_table*) ;
 struct tmc_sg_table* catu_init_sg_table (int *,int,int ,void**) ;
 int kfree (struct catu_etr_buf*) ;
 struct catu_etr_buf* kzalloc (int,int ) ;
 struct coresight_device* tmc_etr_get_catu_device (struct tmc_drvdata*) ;

__attribute__((used)) static int catu_alloc_etr_buf(struct tmc_drvdata *tmc_drvdata,
         struct etr_buf *etr_buf, int node, void **pages)
{
 struct coresight_device *csdev;
 struct tmc_sg_table *catu_table;
 struct catu_etr_buf *catu_buf;

 csdev = tmc_etr_get_catu_device(tmc_drvdata);
 if (!csdev)
  return -ENODEV;
 catu_buf = kzalloc(sizeof(*catu_buf), GFP_KERNEL);
 if (!catu_buf)
  return -ENOMEM;

 catu_table = catu_init_sg_table(&csdev->dev, node,
     etr_buf->size, pages);
 if (IS_ERR(catu_table)) {
  kfree(catu_buf);
  return PTR_ERR(catu_table);
 }

 etr_buf->mode = ETR_MODE_CATU;
 etr_buf->private = catu_buf;
 etr_buf->hwaddr = CATU_DEFAULT_INADDR;

 catu_buf->catu_table = catu_table;

 catu_buf->sladdr = catu_table->table_daddr;

 return 0;
}
