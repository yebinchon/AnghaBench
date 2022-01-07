
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int rx_count; int r_size; int * rx_buf; } ;
struct sii8620 {TYPE_1__ burst; } ;



 int get_unaligned_be16 (int *) ;
 int get_unaligned_le16 (int *) ;

__attribute__((used)) static void sii8620_burst_rx_all(struct sii8620 *ctx)
{
 u8 *d = ctx->burst.rx_buf;
 int count = ctx->burst.rx_count;

 while (count-- > 0) {
  int len = *d++;
  int id = get_unaligned_be16(&d[0]);

  switch (id) {
  case 128:
   ctx->burst.r_size = get_unaligned_le16(&d[2]);
   break;
  default:
   break;
  }
  count -= len;
  d += len;
 }
 ctx->burst.rx_count = 0;
}
