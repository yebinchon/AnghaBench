
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_edma_chan {scalar_t__ status; scalar_t__ request; int configured; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ EDMA_REQ_NONE ;
 scalar_t__ EDMA_REQ_PAUSE ;
 scalar_t__ EDMA_ST_BUSY ;
 int EPERM ;
 struct dw_edma_chan* dchan2dw_edma_chan (struct dma_chan*) ;

__attribute__((used)) static int dw_edma_device_pause(struct dma_chan *dchan)
{
 struct dw_edma_chan *chan = dchan2dw_edma_chan(dchan);
 int err = 0;

 if (!chan->configured)
  err = -EPERM;
 else if (chan->status != EDMA_ST_BUSY)
  err = -EPERM;
 else if (chan->request != EDMA_REQ_NONE)
  err = -EPERM;
 else
  chan->request = EDMA_REQ_PAUSE;

 return err;
}
