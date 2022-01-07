
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct etr_sg_table {int sg_table; } ;
struct etr_buf {struct etr_sg_table* private; } ;
typedef int ssize_t ;


 int tmc_sg_table_get_data (int ,int ,size_t,char**) ;

__attribute__((used)) static ssize_t tmc_etr_get_data_sg_buf(struct etr_buf *etr_buf, u64 offset,
           size_t len, char **bufpp)
{
 struct etr_sg_table *etr_table = etr_buf->private;

 return tmc_sg_table_get_data(etr_table->sg_table, offset, len, bufpp);
}
