
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipi_dsi_packet {int* header; int payload_length; int* payload; int size; } ;
struct mipi_dsi_msg {int type; int channel; int tx_len; int* tx_buf; } ;


 int EINVAL ;
 int memset (struct mipi_dsi_packet*,int ,int) ;
 scalar_t__ mipi_dsi_packet_format_is_long (int) ;
 int mipi_dsi_packet_format_is_short (int) ;

int mipi_dsi_create_packet(struct mipi_dsi_packet *packet,
      const struct mipi_dsi_msg *msg)
{
 if (!packet || !msg)
  return -EINVAL;


 if (!mipi_dsi_packet_format_is_short(msg->type) &&
     !mipi_dsi_packet_format_is_long(msg->type))
  return -EINVAL;

 if (msg->channel > 3)
  return -EINVAL;

 memset(packet, 0, sizeof(*packet));
 packet->header[0] = ((msg->channel & 0x3) << 6) | (msg->type & 0x3f);
 if (mipi_dsi_packet_format_is_long(msg->type)) {
  packet->header[1] = (msg->tx_len >> 0) & 0xff;
  packet->header[2] = (msg->tx_len >> 8) & 0xff;

  packet->payload_length = msg->tx_len;
  packet->payload = msg->tx_buf;
 } else {
  const u8 *tx = msg->tx_buf;

  packet->header[1] = (msg->tx_len > 0) ? tx[0] : 0;
  packet->header[2] = (msg->tx_len > 1) ? tx[1] : 0;
 }

 packet->size = sizeof(packet->header) + packet->payload_length;

 return 0;
}
