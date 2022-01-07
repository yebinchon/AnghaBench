
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct st_fdma_dev {int dev; } ;
struct TYPE_8__ {int dir; int req_ctrl; scalar_t__ dev_addr; } ;
struct TYPE_7__ {int src_addr_width; int dst_addr_width; scalar_t__ dst_addr; scalar_t__ dst_maxburst; scalar_t__ src_addr; scalar_t__ src_maxburst; } ;
struct TYPE_5__ {int chan_id; } ;
struct TYPE_6__ {TYPE_1__ chan; } ;
struct st_fdma_chan {TYPE_4__ cfg; TYPE_3__ scfg; struct st_fdma_dev* fdev; TYPE_2__ vchan; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;
 int EINVAL ;
 int FDMA_REQ_CTRL_NUM_OPS (scalar_t__) ;
 int FDMA_REQ_CTRL_NUM_OPS_MASK ;
 int FDMA_REQ_CTRL_OFST ;
 int FDMA_REQ_CTRL_OPCODE_LD_ST1 ;
 int FDMA_REQ_CTRL_OPCODE_LD_ST2 ;
 int FDMA_REQ_CTRL_OPCODE_LD_ST4 ;
 int FDMA_REQ_CTRL_OPCODE_LD_ST8 ;
 int FDMA_REQ_CTRL_OPCODE_MASK ;
 int FDMA_REQ_CTRL_WNR ;
 int dev_dbg (int ,char*,int,scalar_t__,int ) ;
 int dreq_write (struct st_fdma_chan*,int ,int ) ;

__attribute__((used)) static int config_reqctrl(struct st_fdma_chan *fchan,
     enum dma_transfer_direction direction)
{
 u32 maxburst = 0, addr = 0;
 enum dma_slave_buswidth width;
 int ch_id = fchan->vchan.chan.chan_id;
 struct st_fdma_dev *fdev = fchan->fdev;

 switch (direction) {

 case 133:
  fchan->cfg.req_ctrl &= ~FDMA_REQ_CTRL_WNR;
  maxburst = fchan->scfg.src_maxburst;
  width = fchan->scfg.src_addr_width;
  addr = fchan->scfg.src_addr;
  break;

 case 132:
  fchan->cfg.req_ctrl |= FDMA_REQ_CTRL_WNR;
  maxburst = fchan->scfg.dst_maxburst;
  width = fchan->scfg.dst_addr_width;
  addr = fchan->scfg.dst_addr;
  break;

 default:
  return -EINVAL;
 }

 fchan->cfg.req_ctrl &= ~FDMA_REQ_CTRL_OPCODE_MASK;

 switch (width) {

 case 131:
  fchan->cfg.req_ctrl |= FDMA_REQ_CTRL_OPCODE_LD_ST1;
  break;

 case 130:
  fchan->cfg.req_ctrl |= FDMA_REQ_CTRL_OPCODE_LD_ST2;
  break;

 case 129:
  fchan->cfg.req_ctrl |= FDMA_REQ_CTRL_OPCODE_LD_ST4;
  break;

 case 128:
  fchan->cfg.req_ctrl |= FDMA_REQ_CTRL_OPCODE_LD_ST8;
  break;

 default:
  return -EINVAL;
 }

 fchan->cfg.req_ctrl &= ~FDMA_REQ_CTRL_NUM_OPS_MASK;
 fchan->cfg.req_ctrl |= FDMA_REQ_CTRL_NUM_OPS(maxburst-1);
 dreq_write(fchan, fchan->cfg.req_ctrl, FDMA_REQ_CTRL_OFST);

 fchan->cfg.dev_addr = addr;
 fchan->cfg.dir = direction;

 dev_dbg(fdev->dev, "chan:%d config_reqctrl:%#x req_ctrl:%#lx\n",
  ch_id, addr, fchan->cfg.req_ctrl);

 return 0;
}
