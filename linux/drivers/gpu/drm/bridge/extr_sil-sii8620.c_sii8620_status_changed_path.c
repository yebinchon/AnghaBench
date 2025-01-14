
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int* stat; scalar_t__ use_packed_pixel; } ;


 int LINK_MODE ;
 size_t MHL_DST_LINK_MODE ;
 int MHL_DST_LM_CLK_MODE_NORMAL ;
 int MHL_DST_LM_CLK_MODE_PACKED_PIXEL ;
 int MHL_DST_LM_PATH_ENABLED ;
 int MHL_DST_REG (int ) ;
 int sii8620_mt_write_stat (struct sii8620*,int ,int) ;

__attribute__((used)) static void sii8620_status_changed_path(struct sii8620 *ctx)
{
 u8 link_mode;

 if (ctx->use_packed_pixel)
  link_mode = MHL_DST_LM_CLK_MODE_PACKED_PIXEL;
 else
  link_mode = MHL_DST_LM_CLK_MODE_NORMAL;

 if (ctx->stat[MHL_DST_LINK_MODE] & MHL_DST_LM_PATH_ENABLED)
  link_mode |= MHL_DST_LM_PATH_ENABLED;

 sii8620_mt_write_stat(ctx, MHL_DST_REG(LINK_MODE),
         link_mode);
}
