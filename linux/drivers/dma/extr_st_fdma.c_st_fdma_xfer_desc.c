
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct TYPE_12__ {int chan_id; } ;
struct TYPE_13__ {TYPE_5__ chan; } ;
struct st_fdma_chan {TYPE_6__ vchan; TYPE_4__* fdev; TYPE_7__* fdesc; } ;
struct TYPE_14__ {TYPE_2__* node; } ;
struct TYPE_11__ {int dev; TYPE_3__* slim_rproc; } ;
struct TYPE_10__ {scalar_t__ peri; } ;
struct TYPE_9__ {unsigned long pdesc; TYPE_1__* desc; } ;
struct TYPE_8__ {unsigned long nbytes; } ;


 int FDMA_CH_CMD_OFST ;
 unsigned long FDMA_CH_CMD_STA_START ;
 scalar_t__ FDMA_CMD_SET_OFST ;
 unsigned long FDMA_CMD_START (int ) ;
 int FDMA_CNTN_OFST ;
 int dev_dbg (int ,char*,int ) ;
 int fchan_write (struct st_fdma_chan*,unsigned long,int ) ;
 int fnode_write (struct st_fdma_chan*,unsigned long,int ) ;
 TYPE_7__* to_st_fdma_desc (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (TYPE_6__*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void st_fdma_xfer_desc(struct st_fdma_chan *fchan)
{
 struct virt_dma_desc *vdesc;
 unsigned long nbytes, ch_cmd, cmd;

 vdesc = vchan_next_desc(&fchan->vchan);
 if (!vdesc)
  return;

 fchan->fdesc = to_st_fdma_desc(vdesc);
 nbytes = fchan->fdesc->node[0].desc->nbytes;
 cmd = FDMA_CMD_START(fchan->vchan.chan.chan_id);
 ch_cmd = fchan->fdesc->node[0].pdesc | FDMA_CH_CMD_STA_START;


 fnode_write(fchan, nbytes, FDMA_CNTN_OFST);
 fchan_write(fchan, ch_cmd, FDMA_CH_CMD_OFST);
 writel(cmd,
  fchan->fdev->slim_rproc->peri + FDMA_CMD_SET_OFST);

 dev_dbg(fchan->fdev->dev, "start chan:%d\n", fchan->vchan.chan.chan_id);
}
