
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i3c_ccc_cmd {int err; int id; TYPE_2__* dests; } ;
struct dw_i3c_xfer {int ret; struct dw_i3c_cmd* cmds; int comp; } ;
struct dw_i3c_master {int dummy; } ;
struct dw_i3c_cmd {int cmd_hi; int cmd_lo; scalar_t__ error; int rx_len; int rx_buf; } ;
struct TYPE_3__ {int len; int data; } ;
struct TYPE_4__ {TYPE_1__ payload; int addr; } ;


 int COMMAND_PORT_ARG_DATA_LEN (int ) ;
 int COMMAND_PORT_CMD (int ) ;
 int COMMAND_PORT_CP ;
 int COMMAND_PORT_DEV_INDEX (int) ;
 int COMMAND_PORT_READ_TRANSFER ;
 int COMMAND_PORT_ROC ;
 int COMMAND_PORT_TOC ;
 int COMMAND_PORT_TRANSFER_ARG ;
 int ENOMEM ;
 int I3C_ERROR_M2 ;
 scalar_t__ RESPONSE_ERROR_IBA_NACK ;
 int XFER_TIMEOUT ;
 struct dw_i3c_xfer* dw_i3c_master_alloc_xfer (struct dw_i3c_master*,int) ;
 int dw_i3c_master_dequeue_xfer (struct dw_i3c_master*,struct dw_i3c_xfer*) ;
 int dw_i3c_master_enqueue_xfer (struct dw_i3c_master*,struct dw_i3c_xfer*) ;
 int dw_i3c_master_free_xfer (struct dw_i3c_xfer*) ;
 int dw_i3c_master_get_addr_pos (struct dw_i3c_master*,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int dw_i3c_ccc_get(struct dw_i3c_master *master, struct i3c_ccc_cmd *ccc)
{
 struct dw_i3c_xfer *xfer;
 struct dw_i3c_cmd *cmd;
 int ret, pos;

 pos = dw_i3c_master_get_addr_pos(master, ccc->dests[0].addr);
 if (pos < 0)
  return pos;

 xfer = dw_i3c_master_alloc_xfer(master, 1);
 if (!xfer)
  return -ENOMEM;

 cmd = xfer->cmds;
 cmd->rx_buf = ccc->dests[0].payload.data;
 cmd->rx_len = ccc->dests[0].payload.len;

 cmd->cmd_hi = COMMAND_PORT_ARG_DATA_LEN(ccc->dests[0].payload.len) |
        COMMAND_PORT_TRANSFER_ARG;

 cmd->cmd_lo = COMMAND_PORT_READ_TRANSFER |
        COMMAND_PORT_CP |
        COMMAND_PORT_DEV_INDEX(pos) |
        COMMAND_PORT_CMD(ccc->id) |
        COMMAND_PORT_TOC |
        COMMAND_PORT_ROC;

 dw_i3c_master_enqueue_xfer(master, xfer);
 if (!wait_for_completion_timeout(&xfer->comp, XFER_TIMEOUT))
  dw_i3c_master_dequeue_xfer(master, xfer);

 ret = xfer->ret;
 if (xfer->cmds[0].error == RESPONSE_ERROR_IBA_NACK)
  ccc->err = I3C_ERROR_M2;
 dw_i3c_master_free_xfer(xfer);

 return ret;
}
