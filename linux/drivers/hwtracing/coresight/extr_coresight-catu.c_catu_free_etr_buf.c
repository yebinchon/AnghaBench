
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etr_buf {scalar_t__ mode; struct catu_etr_buf* private; } ;
struct catu_etr_buf {int catu_table; } ;


 scalar_t__ ETR_MODE_CATU ;
 int kfree (struct catu_etr_buf*) ;
 int tmc_free_sg_table (int ) ;

__attribute__((used)) static void catu_free_etr_buf(struct etr_buf *etr_buf)
{
 struct catu_etr_buf *catu_buf;

 if (!etr_buf || etr_buf->mode != ETR_MODE_CATU || !etr_buf->private)
  return;

 catu_buf = etr_buf->private;
 tmc_free_sg_table(catu_buf->catu_table);
 kfree(catu_buf);
}
