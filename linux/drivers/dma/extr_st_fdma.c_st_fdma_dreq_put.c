
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_fdma_dev {int dreq_mask; int dev; } ;
struct st_fdma_chan {int dreq_line; struct st_fdma_dev* fdev; } ;


 int clear_bit (int ,int *) ;
 int dev_dbg (int ,char*,int ) ;

__attribute__((used)) static void st_fdma_dreq_put(struct st_fdma_chan *fchan)
{
 struct st_fdma_dev *fdev = fchan->fdev;

 dev_dbg(fdev->dev, "put dreq_line:%#x\n", fchan->dreq_line);
 clear_bit(fchan->dreq_line, &fdev->dreq_mask);
}
