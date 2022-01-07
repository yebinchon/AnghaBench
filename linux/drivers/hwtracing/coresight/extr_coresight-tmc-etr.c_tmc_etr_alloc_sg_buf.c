
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {TYPE_1__* csdev; } ;
struct etr_sg_table {int hwaddr; } ;
struct etr_buf {struct etr_sg_table* private; int mode; int hwaddr; int size; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int ETR_MODE_ETR_SG ;
 scalar_t__ IS_ERR (struct etr_sg_table*) ;
 struct etr_sg_table* tmc_init_etr_sg_table (struct device*,int,int ,void**) ;

__attribute__((used)) static int tmc_etr_alloc_sg_buf(struct tmc_drvdata *drvdata,
    struct etr_buf *etr_buf, int node,
    void **pages)
{
 struct etr_sg_table *etr_table;
 struct device *dev = &drvdata->csdev->dev;

 etr_table = tmc_init_etr_sg_table(dev, node,
       etr_buf->size, pages);
 if (IS_ERR(etr_table))
  return -ENOMEM;
 etr_buf->hwaddr = etr_table->hwaddr;
 etr_buf->mode = ETR_MODE_ETR_SG;
 etr_buf->private = etr_table;
 return 0;
}
