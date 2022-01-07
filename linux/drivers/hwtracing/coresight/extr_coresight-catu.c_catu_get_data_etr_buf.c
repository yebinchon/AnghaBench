
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct etr_buf {struct catu_etr_buf* private; } ;
struct catu_etr_buf {int catu_table; } ;
typedef int ssize_t ;


 int tmc_sg_table_get_data (int ,int ,size_t,char**) ;

__attribute__((used)) static ssize_t catu_get_data_etr_buf(struct etr_buf *etr_buf, u64 offset,
         size_t len, char **bufpp)
{
 struct catu_etr_buf *catu_buf = etr_buf->private;

 return tmc_sg_table_get_data(catu_buf->catu_table, offset, len, bufpp);
}
