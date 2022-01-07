
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vc4_dsi {int xfer_result; int xfer_completion; } ;
typedef int irqreturn_t ;


 int DSI1_INT_ERR_CONTROL ;
 int DSI1_INT_ERR_CONT_LP0 ;
 int DSI1_INT_ERR_CONT_LP1 ;
 int DSI1_INT_ERR_SYNC_ESC ;
 int DSI1_INT_HSTX_TO ;
 int DSI1_INT_LPRX_TO ;
 int DSI1_INT_PHY_DIR_RTF ;
 int DSI1_INT_PR_TO ;
 int DSI1_INT_TA_TO ;
 int DSI1_INT_TXPKT1_DONE ;
 int DSI_PORT_READ (int ) ;
 int DSI_PORT_WRITE (int ,int) ;
 int ETIMEDOUT ;
 int INT_STAT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int dsi_handle_error (struct vc4_dsi*,int *,int,int,char*) ;

__attribute__((used)) static irqreturn_t vc4_dsi_irq_handler(int irq, void *data)
{
 struct vc4_dsi *dsi = data;
 u32 stat = DSI_PORT_READ(INT_STAT);
 irqreturn_t ret = IRQ_NONE;

 DSI_PORT_WRITE(INT_STAT, stat);

 dsi_handle_error(dsi, &ret, stat,
    DSI1_INT_ERR_SYNC_ESC, "LPDT sync");
 dsi_handle_error(dsi, &ret, stat,
    DSI1_INT_ERR_CONTROL, "data lane 0 sequence");
 dsi_handle_error(dsi, &ret, stat,
    DSI1_INT_ERR_CONT_LP0, "LP0 contention");
 dsi_handle_error(dsi, &ret, stat,
    DSI1_INT_ERR_CONT_LP1, "LP1 contention");
 dsi_handle_error(dsi, &ret, stat,
    DSI1_INT_HSTX_TO, "HSTX timeout");
 dsi_handle_error(dsi, &ret, stat,
    DSI1_INT_LPRX_TO, "LPRX timeout");
 dsi_handle_error(dsi, &ret, stat,
    DSI1_INT_TA_TO, "turnaround timeout");
 dsi_handle_error(dsi, &ret, stat,
    DSI1_INT_PR_TO, "peripheral reset timeout");

 if (stat & (DSI1_INT_TXPKT1_DONE | DSI1_INT_PHY_DIR_RTF)) {
  complete(&dsi->xfer_completion);
  ret = IRQ_HANDLED;
 } else if (stat & DSI1_INT_HSTX_TO) {
  complete(&dsi->xfer_completion);
  dsi->xfer_result = -ETIMEDOUT;
  ret = IRQ_HANDLED;
 }

 return ret;
}
