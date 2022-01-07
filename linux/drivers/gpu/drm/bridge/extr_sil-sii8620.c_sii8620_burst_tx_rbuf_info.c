
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int dummy; } ;
struct mhl_burst_blk_rcv_buffer_info {int size; int id; } ;


 int MHL_BURST_ID_BLK_RCV_BUFFER_INFO ;
 int cpu_to_be16 (int ) ;
 int cpu_to_le16 (int) ;
 struct mhl_burst_blk_rcv_buffer_info* sii8620_burst_get_tx_buf (struct sii8620*,int) ;

__attribute__((used)) static void sii8620_burst_tx_rbuf_info(struct sii8620 *ctx, int size)
{
 struct mhl_burst_blk_rcv_buffer_info *d =
  sii8620_burst_get_tx_buf(ctx, sizeof(*d));
 if (!d)
  return;

 d->id = cpu_to_be16(MHL_BURST_ID_BLK_RCV_BUFFER_INFO);
 d->size = cpu_to_le16(size);
}
