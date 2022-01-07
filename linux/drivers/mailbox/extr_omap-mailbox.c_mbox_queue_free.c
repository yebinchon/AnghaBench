
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox_queue {int fifo; } ;


 int kfifo_free (int *) ;
 int kfree (struct omap_mbox_queue*) ;

__attribute__((used)) static void mbox_queue_free(struct omap_mbox_queue *q)
{
 kfifo_free(&q->fifo);
 kfree(q);
}
