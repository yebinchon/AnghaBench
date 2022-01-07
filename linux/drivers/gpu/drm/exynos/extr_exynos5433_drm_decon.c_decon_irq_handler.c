
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct decon_context {int out_type; scalar_t__ addr; } ;
typedef int irqreturn_t ;


 scalar_t__ DECON_VIDINTCON1 ;
 scalar_t__ DECON_VIDOUTCON0 ;
 int IFTYPE_HDMI ;
 int IRQ_HANDLED ;
 int VIDINTCON1_INTFRMDONEPEND ;
 int VIDINTCON1_INTFRMPEND ;
 int VIDOUT_INTERLACE_EN_F ;
 int VIDOUT_INTERLACE_FIELD_F ;
 int decon_handle_vblank (struct decon_context*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t decon_irq_handler(int irq, void *dev_id)
{
 struct decon_context *ctx = dev_id;
 u32 val;

 val = readl(ctx->addr + DECON_VIDINTCON1);
 val &= VIDINTCON1_INTFRMDONEPEND | VIDINTCON1_INTFRMPEND;

 if (val) {
  writel(val, ctx->addr + DECON_VIDINTCON1);
  if (ctx->out_type & IFTYPE_HDMI) {
   val = readl(ctx->addr + DECON_VIDOUTCON0);
   val &= VIDOUT_INTERLACE_EN_F | VIDOUT_INTERLACE_FIELD_F;
   if (val ==
       (VIDOUT_INTERLACE_EN_F | VIDOUT_INTERLACE_FIELD_F))
    return IRQ_HANDLED;
  }
  decon_handle_vblank(ctx);
 }

 return IRQ_HANDLED;
}
