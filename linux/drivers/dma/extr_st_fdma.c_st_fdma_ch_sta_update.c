
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_fdma_dev {int dev; } ;
struct TYPE_3__ {int chan_id; } ;
struct TYPE_4__ {TYPE_1__ chan; } ;
struct st_fdma_chan {int status; struct st_fdma_dev* fdev; TYPE_2__ vchan; } ;


 int DMA_ERROR ;
 int DMA_IN_PROGRESS ;
 int DMA_PAUSED ;
 unsigned long FDMA_CH_CMD_ERR_MASK ;
 int FDMA_CH_CMD_OFST ;
 unsigned long FDMA_CH_CMD_STA_MASK ;


 unsigned long FDMA_INT_STA_ERR ;
 int dev_warn (int ,char*,int,unsigned long) ;
 unsigned long fchan_read (struct st_fdma_chan*,int ) ;

__attribute__((used)) static void st_fdma_ch_sta_update(struct st_fdma_chan *fchan,
      unsigned long int_sta)
{
 unsigned long ch_sta, ch_err;
 int ch_id = fchan->vchan.chan.chan_id;
 struct st_fdma_dev *fdev = fchan->fdev;

 ch_sta = fchan_read(fchan, FDMA_CH_CMD_OFST);
 ch_err = ch_sta & FDMA_CH_CMD_ERR_MASK;
 ch_sta &= FDMA_CH_CMD_STA_MASK;

 if (int_sta & FDMA_INT_STA_ERR) {
  dev_warn(fdev->dev, "chan:%d, error:%ld\n", ch_id, ch_err);
  fchan->status = DMA_ERROR;
  return;
 }

 switch (ch_sta) {
 case 129:
  fchan->status = DMA_PAUSED;
  break;

 case 128:
  fchan->status = DMA_IN_PROGRESS;
  break;
 }
}
