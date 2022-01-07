
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int xdevcap; } ;


 int MHL_XDC_SIZE ;
 int REG_EDID_FIFO_RD_DATA ;
 int sii8620_read_buf (struct sii8620*,int ,int ,int ) ;

__attribute__((used)) static void sii8620_mr_xdevcap(struct sii8620 *ctx)
{
 sii8620_read_buf(ctx, REG_EDID_FIFO_RD_DATA, ctx->xdevcap,
    MHL_XDC_SIZE);
}
