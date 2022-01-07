
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_sg_table {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CATU_PAGES_PER_SYSPAGE ;
 int DIV_ROUND_UP (int,int ) ;
 scalar_t__ IS_ERR (struct tmc_sg_table*) ;
 int PAGE_SHIFT ;
 int SZ_1M ;
 int catu_dump_table (struct tmc_sg_table*) ;
 int catu_populate_table (struct tmc_sg_table*) ;
 int dev_dbg (struct device*,char*,struct tmc_sg_table*,unsigned long,int) ;
 struct tmc_sg_table* tmc_alloc_sg_table (struct device*,int,int,int,void**) ;

__attribute__((used)) static struct tmc_sg_table *
catu_init_sg_table(struct device *catu_dev, int node,
     ssize_t size, void **pages)
{
 int nr_tpages;
 struct tmc_sg_table *catu_table;





 nr_tpages = DIV_ROUND_UP(size, SZ_1M) / CATU_PAGES_PER_SYSPAGE;
 catu_table = tmc_alloc_sg_table(catu_dev, node, nr_tpages,
     size >> PAGE_SHIFT, pages);
 if (IS_ERR(catu_table))
  return catu_table;

 catu_populate_table(catu_table);
 dev_dbg(catu_dev,
  "Setup table %p, size %ldKB, %d table pages\n",
  catu_table, (unsigned long)size >> 10, nr_tpages);
 catu_dump_table(catu_table);
 return catu_table;
}
