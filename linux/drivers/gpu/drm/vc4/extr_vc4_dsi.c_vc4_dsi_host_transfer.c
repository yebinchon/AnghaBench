
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vc4_dsi {int xfer_result; TYPE_1__* pdev; int xfer_completion; } ;
struct mipi_dsi_packet {int* header; int payload_length; int* payload; } ;
struct mipi_dsi_msg {int rx_len; int flags; int* rx_buf; int type; } ;
struct mipi_dsi_host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int CTRL ;
 int CTRL_RESET_FIFOS ;
 int DRM_ERROR (char*,int,...) ;
 int DSI1_INTERRUPTS_ALWAYS_ENABLED ;
 int DSI1_INT_PHY_DIR_RTF ;
 int DSI1_INT_TXPKT1_DONE ;
 int DSI1_RXPKT_FIFO ;
 int DSI_PIX_FIFO_DEPTH ;
 int DSI_PIX_FIFO_WIDTH ;
 int DSI_PORT_BIT (int ) ;
 int DSI_PORT_READ (int ) ;
 int DSI_PORT_WRITE (int ,int const) ;
 int DSI_READ (int ) ;
 int DSI_RXPKT1H_BC_PARAM ;
 int DSI_RXPKT1H_PKT_TYPE_LONG ;
 int DSI_RXPKT1H_SHORT_0 ;
 int DSI_RXPKT1H_SHORT_1 ;
 int DSI_TXPKT1C_CMD_CTRL ;
 int DSI_TXPKT1C_CMD_CTRL_RX ;
 int DSI_TXPKT1C_CMD_CTRL_TX ;
 int DSI_TXPKT1C_CMD_EN ;
 int DSI_TXPKT1C_CMD_MODE_LP ;
 int DSI_TXPKT1C_CMD_REPEAT ;
 int DSI_TXPKT1C_CMD_TYPE_LONG ;
 int DSI_TXPKT1C_DISPLAY_NO ;
 int DSI_TXPKT1C_DISPLAY_NO_SECONDARY ;
 int DSI_TXPKT1C_DISPLAY_NO_SHORT ;
 int DSI_TXPKT1H_BC_CMDFIFO ;
 int DSI_TXPKT1H_BC_DT ;
 int DSI_TXPKT1H_BC_PARAM ;
 int ENXIO ;
 int ETIMEDOUT ;
 int INT_EN ;
 int INT_STAT ;
 int MIPI_DSI_MSG_USE_LPM ;
 int RXPKT1H ;
 int TXPKT1C ;
 int TXPKT1H ;
 int TXPKT_CMD_FIFO ;
 int TXPKT_PIX_FIFO ;
 int VC4_GET_FIELD (int,int ) ;
 int VC4_SET_FIELD (int,int ) ;
 int WARN_ON_ONCE (int) ;
 int dev_err (int *,char*,...) ;
 struct vc4_dsi* host_to_dsi (struct mipi_dsi_host*) ;
 int mipi_dsi_create_packet (struct mipi_dsi_packet*,struct mipi_dsi_msg const*) ;
 int mipi_dsi_packet_format_is_long (int ) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int udelay (int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static ssize_t vc4_dsi_host_transfer(struct mipi_dsi_host *host,
         const struct mipi_dsi_msg *msg)
{
 struct vc4_dsi *dsi = host_to_dsi(host);
 struct mipi_dsi_packet packet;
 u32 pkth = 0, pktc = 0;
 int i, ret;
 bool is_long = mipi_dsi_packet_format_is_long(msg->type);
 u32 cmd_fifo_len = 0, pix_fifo_len = 0;

 mipi_dsi_create_packet(&packet, msg);

 pkth |= VC4_SET_FIELD(packet.header[0], DSI_TXPKT1H_BC_DT);
 pkth |= VC4_SET_FIELD(packet.header[1] |
         (packet.header[2] << 8),
         DSI_TXPKT1H_BC_PARAM);
 if (is_long) {
  if (packet.payload_length <= 16) {
   cmd_fifo_len = packet.payload_length;
   pix_fifo_len = 0;
  } else {
   cmd_fifo_len = (packet.payload_length %
     DSI_PIX_FIFO_WIDTH);
   pix_fifo_len = ((packet.payload_length - cmd_fifo_len) /
     DSI_PIX_FIFO_WIDTH);
  }

  WARN_ON_ONCE(pix_fifo_len >= DSI_PIX_FIFO_DEPTH);

  pkth |= VC4_SET_FIELD(cmd_fifo_len, DSI_TXPKT1H_BC_CMDFIFO);
 }

 if (msg->rx_len) {
  pktc |= VC4_SET_FIELD(DSI_TXPKT1C_CMD_CTRL_RX,
          DSI_TXPKT1C_CMD_CTRL);
 } else {
  pktc |= VC4_SET_FIELD(DSI_TXPKT1C_CMD_CTRL_TX,
          DSI_TXPKT1C_CMD_CTRL);
 }

 for (i = 0; i < cmd_fifo_len; i++)
  DSI_PORT_WRITE(TXPKT_CMD_FIFO, packet.payload[i]);
 for (i = 0; i < pix_fifo_len; i++) {
  const u8 *pix = packet.payload + cmd_fifo_len + i * 4;

  DSI_PORT_WRITE(TXPKT_PIX_FIFO,
          pix[0] |
          pix[1] << 8 |
          pix[2] << 16 |
          pix[3] << 24);
 }

 if (msg->flags & MIPI_DSI_MSG_USE_LPM)
  pktc |= DSI_TXPKT1C_CMD_MODE_LP;
 if (is_long)
  pktc |= DSI_TXPKT1C_CMD_TYPE_LONG;




 pktc |= VC4_SET_FIELD(1, DSI_TXPKT1C_CMD_REPEAT);

 pktc |= DSI_TXPKT1C_CMD_EN;
 if (pix_fifo_len) {
  pktc |= VC4_SET_FIELD(DSI_TXPKT1C_DISPLAY_NO_SECONDARY,
          DSI_TXPKT1C_DISPLAY_NO);
 } else {
  pktc |= VC4_SET_FIELD(DSI_TXPKT1C_DISPLAY_NO_SHORT,
          DSI_TXPKT1C_DISPLAY_NO);
 }


 dsi->xfer_result = 0;
 reinit_completion(&dsi->xfer_completion);
 DSI_PORT_WRITE(INT_STAT, DSI1_INT_TXPKT1_DONE | DSI1_INT_PHY_DIR_RTF);
 if (msg->rx_len) {
  DSI_PORT_WRITE(INT_EN, (DSI1_INTERRUPTS_ALWAYS_ENABLED |
     DSI1_INT_PHY_DIR_RTF));
 } else {
  DSI_PORT_WRITE(INT_EN, (DSI1_INTERRUPTS_ALWAYS_ENABLED |
     DSI1_INT_TXPKT1_DONE));
 }


 DSI_PORT_WRITE(TXPKT1H, pkth);
 DSI_PORT_WRITE(TXPKT1C, pktc);

 if (!wait_for_completion_timeout(&dsi->xfer_completion,
      msecs_to_jiffies(1000))) {
  dev_err(&dsi->pdev->dev, "transfer interrupt wait timeout");
  dev_err(&dsi->pdev->dev, "instat: 0x%08x\n",
   DSI_PORT_READ(INT_STAT));
  ret = -ETIMEDOUT;
 } else {
  ret = dsi->xfer_result;
 }

 DSI_PORT_WRITE(INT_EN, DSI1_INTERRUPTS_ALWAYS_ENABLED);

 if (ret)
  goto reset_fifo_and_return;

 if (ret == 0 && msg->rx_len) {
  u32 rxpkt1h = DSI_PORT_READ(RXPKT1H);
  u8 *msg_rx = msg->rx_buf;

  if (rxpkt1h & DSI_RXPKT1H_PKT_TYPE_LONG) {
   u32 rxlen = VC4_GET_FIELD(rxpkt1h,
        DSI_RXPKT1H_BC_PARAM);

   if (rxlen != msg->rx_len) {
    DRM_ERROR("DSI returned %db, expecting %db\n",
       rxlen, (int)msg->rx_len);
    ret = -ENXIO;
    goto reset_fifo_and_return;
   }

   for (i = 0; i < msg->rx_len; i++)
    msg_rx[i] = DSI_READ(DSI1_RXPKT_FIFO);
  } else {


   msg_rx[0] = VC4_GET_FIELD(rxpkt1h,
        DSI_RXPKT1H_SHORT_0);
   if (msg->rx_len > 1) {
    msg_rx[1] = VC4_GET_FIELD(rxpkt1h,
         DSI_RXPKT1H_SHORT_1);
   }
  }
 }

 return ret;

reset_fifo_and_return:
 DRM_ERROR("DSI transfer failed, resetting: %d\n", ret);

 DSI_PORT_WRITE(TXPKT1C, DSI_PORT_READ(TXPKT1C) & ~DSI_TXPKT1C_CMD_EN);
 udelay(1);
 DSI_PORT_WRITE(CTRL,
         DSI_PORT_READ(CTRL) |
         DSI_PORT_BIT(CTRL_RESET_FIFOS));

 DSI_PORT_WRITE(TXPKT1C, 0);
 DSI_PORT_WRITE(INT_EN, DSI1_INTERRUPTS_ALWAYS_ENABLED);
 return ret;
}
