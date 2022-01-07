
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etr_sg_table {int sg_table; } ;
struct etr_buf {struct etr_sg_table* private; } ;


 int kfree (struct etr_sg_table*) ;
 int tmc_free_sg_table (int ) ;

__attribute__((used)) static void tmc_etr_free_sg_buf(struct etr_buf *etr_buf)
{
 struct etr_sg_table *etr_table = etr_buf->private;

 if (etr_table) {
  tmc_free_sg_table(etr_table->sg_table);
  kfree(etr_table);
 }
}
