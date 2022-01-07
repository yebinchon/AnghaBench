
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etr_buf {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* free ) (struct etr_buf*) ;} ;


 int WARN_ON (int) ;
 int kfree (struct etr_buf*) ;
 int stub1 (struct etr_buf*) ;

__attribute__((used)) static void tmc_free_etr_buf(struct etr_buf *etr_buf)
{
 WARN_ON(!etr_buf->ops || !etr_buf->ops->free);
 etr_buf->ops->free(etr_buf);
 kfree(etr_buf);
}
