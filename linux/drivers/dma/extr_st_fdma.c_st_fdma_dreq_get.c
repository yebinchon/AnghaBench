
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct st_fdma_dev {long dreq_mask; int dev; } ;
struct TYPE_2__ {scalar_t__ req_line; } ;
struct st_fdma_chan {TYPE_1__ cfg; struct st_fdma_dev* fdev; } ;


 int EINVAL ;
 scalar_t__ ST_FDMA_NR_DREQS ;
 int dev_dbg (int ,char*,scalar_t__,long) ;
 int dev_err (int ,char*) ;
 scalar_t__ test_and_set_bit (scalar_t__,long*) ;

__attribute__((used)) static int st_fdma_dreq_get(struct st_fdma_chan *fchan)
{
 struct st_fdma_dev *fdev = fchan->fdev;
 u32 req_line_cfg = fchan->cfg.req_line;
 u32 dreq_line;
 int try = 0;






 do {
  if (fdev->dreq_mask == ~0L) {
   dev_err(fdev->dev, "No req lines available\n");
   return -EINVAL;
  }

  if (try || req_line_cfg >= ST_FDMA_NR_DREQS) {
   dev_err(fdev->dev, "Invalid or used req line\n");
   return -EINVAL;
  } else {
   dreq_line = req_line_cfg;
  }

  try++;
 } while (test_and_set_bit(dreq_line, &fdev->dreq_mask));

 dev_dbg(fdev->dev, "get dreq_line:%d mask:%#lx\n",
  dreq_line, fdev->dreq_mask);

 return dreq_line;
}
