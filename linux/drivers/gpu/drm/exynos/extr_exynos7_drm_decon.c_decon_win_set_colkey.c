
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decon_context {scalar_t__ regs; } ;


 scalar_t__ WKEYCON0_BASE (unsigned int) ;
 scalar_t__ WKEYCON1_BASE (unsigned int) ;
 unsigned int WxKEYCON0_COMPKEY (int ) ;
 unsigned int WxKEYCON0_DIRCON ;
 unsigned int WxKEYCON0_KEYBL_EN ;
 unsigned int WxKEYCON0_KEYEN_F ;
 unsigned int WxKEYCON1_COLVAL (int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void decon_win_set_colkey(struct decon_context *ctx, unsigned int win)
{
 unsigned int keycon0 = 0, keycon1 = 0;

 keycon0 = ~(WxKEYCON0_KEYBL_EN | WxKEYCON0_KEYEN_F |
   WxKEYCON0_DIRCON) | WxKEYCON0_COMPKEY(0);

 keycon1 = WxKEYCON1_COLVAL(0xffffffff);

 writel(keycon0, ctx->regs + WKEYCON0_BASE(win));
 writel(keycon1, ctx->regs + WKEYCON1_BASE(win));
}
