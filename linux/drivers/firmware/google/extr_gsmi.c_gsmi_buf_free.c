
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gsmi_buf {int handle; scalar_t__ start; } ;
struct TYPE_2__ {int dma_pool; } ;


 int dma_pool_free (int ,scalar_t__,int ) ;
 TYPE_1__ gsmi_dev ;
 int kfree (struct gsmi_buf*) ;

__attribute__((used)) static void gsmi_buf_free(struct gsmi_buf *smibuf)
{
 if (smibuf) {
  if (smibuf->start)
   dma_pool_free(gsmi_dev.dma_pool, smibuf->start,
          smibuf->handle);
  kfree(smibuf);
 }
}
