
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipi_dsi_msg {int rx_len; scalar_t__ rx_buf; } ;


 int memcpy (scalar_t__,int *,int) ;

__attribute__((used)) static int dsi_long_read_resp(u8 *buf, const struct mipi_dsi_msg *msg)
{

 if (msg->rx_buf && msg->rx_len)
  memcpy(msg->rx_buf, buf + 4, msg->rx_len);

 return msg->rx_len;
}
