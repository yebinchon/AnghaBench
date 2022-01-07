
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_dev {int err; int flags; int req; int dev; } ;


 int FLAGS_BUSY ;
 int FLAGS_CPU ;
 int FLAGS_DMA_ACTIVE ;
 int FLAGS_DMA_READY ;
 int FLAGS_OUTPUT_READY ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int ,char*,int) ;
 int omap_sham_finish_req (int ,int) ;
 int omap_sham_handle_queue (struct omap_sham_dev*,int *) ;
 int omap_sham_update_dma_stop (struct omap_sham_dev*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void omap_sham_done_task(unsigned long data)
{
 struct omap_sham_dev *dd = (struct omap_sham_dev *)data;
 int err = 0;

 if (!test_bit(FLAGS_BUSY, &dd->flags)) {
  omap_sham_handle_queue(dd, ((void*)0));
  return;
 }

 if (test_bit(FLAGS_CPU, &dd->flags)) {
  if (test_and_clear_bit(FLAGS_OUTPUT_READY, &dd->flags))
   goto finish;
 } else if (test_bit(FLAGS_DMA_READY, &dd->flags)) {
  if (test_and_clear_bit(FLAGS_DMA_ACTIVE, &dd->flags)) {
   omap_sham_update_dma_stop(dd);
   if (dd->err) {
    err = dd->err;
    goto finish;
   }
  }
  if (test_and_clear_bit(FLAGS_OUTPUT_READY, &dd->flags)) {

   clear_bit(FLAGS_DMA_READY, &dd->flags);
   goto finish;
  }
 }

 return;

finish:
 dev_dbg(dd->dev, "update done: err: %d\n", err);

 omap_sham_finish_req(dd->req, err);


 if (!test_bit(FLAGS_BUSY, &dd->flags))
  omap_sham_handle_queue(dd, ((void*)0));
}
