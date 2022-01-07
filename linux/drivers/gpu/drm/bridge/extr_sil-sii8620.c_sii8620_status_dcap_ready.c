
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int* stat; int mode; } ;
typedef enum sii8620_mode { ____Placeholder_sii8620_mode } sii8620_mode ;


 int BIT_INTR9_DEVCAP_DONE ;
 int BIT_INTR9_EDID_DONE ;
 int BIT_INTR9_EDID_ERROR ;
 int CM_MHL1 ;
 int CM_MHL3 ;
 size_t MHL_DST_VERSION ;
 int REG_INTR9_MASK ;
 int sii8620_peer_specific_init (struct sii8620*) ;
 int sii8620_set_mode (struct sii8620*,int) ;
 int sii8620_write (struct sii8620*,int ,int) ;

__attribute__((used)) static void sii8620_status_dcap_ready(struct sii8620 *ctx)
{
 enum sii8620_mode mode;

 mode = ctx->stat[MHL_DST_VERSION] >= 0x30 ? CM_MHL3 : CM_MHL1;
 if (mode > ctx->mode)
  sii8620_set_mode(ctx, mode);
 sii8620_peer_specific_init(ctx);
 sii8620_write(ctx, REG_INTR9_MASK, BIT_INTR9_DEVCAP_DONE
        | BIT_INTR9_EDID_DONE | BIT_INTR9_EDID_ERROR);
}
