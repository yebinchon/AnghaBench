
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i3c_master_controller {int dummy; } ;
struct dw_i3c_xfer {int comp; struct dw_i3c_cmd* cmds; } ;
struct dw_i3c_master {int free_pos; int maxdevs; int* addrs; int datstartaddr; scalar_t__ regs; } ;
struct dw_i3c_cmd {int cmd_hi; int cmd_lo; int rx_len; } ;


 int BIT (int) ;
 int COMMAND_PORT_ADDR_ASSGN_CMD ;
 int COMMAND_PORT_CMD (int ) ;
 int COMMAND_PORT_DEV_COUNT (int) ;
 int COMMAND_PORT_DEV_INDEX (int) ;
 int COMMAND_PORT_ROC ;
 int COMMAND_PORT_TOC ;
 int DEV_ADDR_TABLE_DYNAMIC_ADDR (int) ;
 scalar_t__ DEV_ADDR_TABLE_LOC (int ,int) ;
 int ENOMEM ;
 int ENOSPC ;
 int GENMASK (int,int ) ;
 int I3C_BROADCAST_ADDR ;
 int I3C_CCC_ENTDAA ;
 int I3C_CCC_EVENT_HJ ;
 int I3C_CCC_EVENT_MR ;
 int I3C_CCC_EVENT_SIR ;
 int XFER_TIMEOUT ;
 struct dw_i3c_xfer* dw_i3c_master_alloc_xfer (struct dw_i3c_master*,int) ;
 int dw_i3c_master_dequeue_xfer (struct dw_i3c_master*,struct dw_i3c_xfer*) ;
 int dw_i3c_master_enqueue_xfer (struct dw_i3c_master*,struct dw_i3c_xfer*) ;
 int dw_i3c_master_free_xfer (struct dw_i3c_xfer*) ;
 int dw_i3c_master_get_free_pos (struct dw_i3c_master*) ;
 int even_parity (int) ;
 int i3c_master_add_i3c_dev_locked (struct i3c_master_controller*,int) ;
 int i3c_master_disec_locked (struct i3c_master_controller*,int ,int) ;
 int i3c_master_get_free_addr (struct i3c_master_controller*,int) ;
 struct dw_i3c_master* to_dw_i3c_master (struct i3c_master_controller*) ;
 int wait_for_completion_timeout (int *,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int dw_i3c_master_daa(struct i3c_master_controller *m)
{
 struct dw_i3c_master *master = to_dw_i3c_master(m);
 struct dw_i3c_xfer *xfer;
 struct dw_i3c_cmd *cmd;
 u32 olddevs, newdevs;
 u8 p, last_addr = 0;
 int ret, pos;

 olddevs = ~(master->free_pos);


 for (pos = 0; pos < master->maxdevs; pos++) {
  if (olddevs & BIT(pos))
   continue;

  ret = i3c_master_get_free_addr(m, last_addr + 1);
  if (ret < 0)
   return -ENOSPC;

  master->addrs[pos] = ret;
  p = even_parity(ret);
  last_addr = ret;
  ret |= (p << 7);

  writel(DEV_ADDR_TABLE_DYNAMIC_ADDR(ret),
         master->regs +
         DEV_ADDR_TABLE_LOC(master->datstartaddr, pos));
 }

 xfer = dw_i3c_master_alloc_xfer(master, 1);
 if (!xfer)
  return -ENOMEM;

 pos = dw_i3c_master_get_free_pos(master);
 cmd = &xfer->cmds[0];
 cmd->cmd_hi = 0x1;
 cmd->cmd_lo = COMMAND_PORT_DEV_COUNT(master->maxdevs - pos) |
        COMMAND_PORT_DEV_INDEX(pos) |
        COMMAND_PORT_CMD(I3C_CCC_ENTDAA) |
        COMMAND_PORT_ADDR_ASSGN_CMD |
        COMMAND_PORT_TOC |
        COMMAND_PORT_ROC;

 dw_i3c_master_enqueue_xfer(master, xfer);
 if (!wait_for_completion_timeout(&xfer->comp, XFER_TIMEOUT))
  dw_i3c_master_dequeue_xfer(master, xfer);

 newdevs = GENMASK(master->maxdevs - cmd->rx_len - 1, 0);
 newdevs &= ~olddevs;

 for (pos = 0; pos < master->maxdevs; pos++) {
  if (newdevs & BIT(pos))
   i3c_master_add_i3c_dev_locked(m, master->addrs[pos]);
 }

 dw_i3c_master_free_xfer(xfer);

 i3c_master_disec_locked(m, I3C_BROADCAST_ADDR,
    I3C_CCC_EVENT_HJ |
    I3C_CCC_EVENT_MR |
    I3C_CCC_EVENT_SIR);

 return 0;
}
