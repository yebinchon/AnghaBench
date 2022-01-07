
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxio_hal_resource {int pdid_fifo; int qpid_fifo; int cqid_fifo; int tpt_fifo; } ;


 int kfifo_free (int *) ;
 int kfree (struct cxio_hal_resource*) ;

void cxio_hal_destroy_resource(struct cxio_hal_resource *rscp)
{
 kfifo_free(&rscp->tpt_fifo);
 kfifo_free(&rscp->cqid_fifo);
 kfifo_free(&rscp->qpid_fifo);
 kfifo_free(&rscp->pdid_fifo);
 kfree(rscp);
}
