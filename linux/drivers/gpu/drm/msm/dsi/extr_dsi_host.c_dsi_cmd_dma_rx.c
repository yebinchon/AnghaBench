
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct msm_dsi_host {int * rx_buf; } ;


 int DBG (char*,int,int ) ;
 int REG_DSI_RDBK_DATA (int) ;
 int dsi_read (struct msm_dsi_host*,int ) ;
 int ntohl (int) ;

__attribute__((used)) static int dsi_cmd_dma_rx(struct msm_dsi_host *msm_host,
   u8 *buf, int rx_byte, int pkt_size)
{
 u32 *lp, *temp, data;
 int i, j = 0, cnt;
 u32 read_cnt;
 u8 reg[16];
 int repeated_bytes = 0;
 int buf_offset = buf - msm_host->rx_buf;

 lp = (u32 *)buf;
 temp = (u32 *)reg;
 cnt = (rx_byte + 3) >> 2;
 if (cnt > 4)
  cnt = 4;

 if (rx_byte == 4)
  read_cnt = 4;
 else
  read_cnt = pkt_size + 6;
 if (read_cnt > 16) {
  int bytes_shifted;




  bytes_shifted = read_cnt - 16;
  repeated_bytes = buf_offset - bytes_shifted;
 }

 for (i = cnt - 1; i >= 0; i--) {
  data = dsi_read(msm_host, REG_DSI_RDBK_DATA(i));
  *temp++ = ntohl(data);
  DBG("data = 0x%x and ntohl(data) = 0x%x", data, ntohl(data));
 }

 for (i = repeated_bytes; i < 16; i++)
  buf[j++] = reg[i];

 return j;
}
