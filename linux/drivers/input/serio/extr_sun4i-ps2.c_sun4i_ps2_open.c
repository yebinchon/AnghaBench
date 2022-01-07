
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_ps2data {int lock; scalar_t__ reg_base; int clk; } ;
struct serio {struct sun4i_ps2data* port_data; } ;


 int PS2_FCTL_RXOFIEN ;
 int PS2_FCTL_RXRDYIEN ;
 int PS2_FCTL_RXRST ;
 int PS2_FCTL_RXUFIEN ;
 int PS2_FCTL_TXOFIEN ;
 int PS2_FCTL_TXRST ;
 int PS2_FCTL_TXUFIEN ;
 int PS2_GCTL_BUSEN ;
 int PS2_GCTL_INTEN ;
 int PS2_GCTL_MASTER ;
 int PS2_GCTL_RESET ;
 int PS2_LCTL_ACKERREN ;
 int PS2_LCTL_PARERREN ;
 int PS2_LCTL_RXDTOEN ;
 int PS2_LCTL_STOPERREN ;
 scalar_t__ PS2_REG_CLKDR ;
 scalar_t__ PS2_REG_FCTL ;
 scalar_t__ PS2_REG_GCTL ;
 scalar_t__ PS2_REG_LCTL ;
 int PS2_SAMPLE_CLK ;
 int PS2_SCLK ;
 int clk_get_rate (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sun4i_ps2_open(struct serio *serio)
{
 struct sun4i_ps2data *drvdata = serio->port_data;
 u32 src_clk = 0;
 u32 clk_scdf;
 u32 clk_pcdf;
 u32 rval;
 unsigned long flags;


 rval = PS2_LCTL_STOPERREN | PS2_LCTL_ACKERREN
  | PS2_LCTL_PARERREN | PS2_LCTL_RXDTOEN;
 writel(rval, drvdata->reg_base + PS2_REG_LCTL);


 rval = PS2_FCTL_TXRST | PS2_FCTL_RXRST | PS2_FCTL_TXUFIEN
  | PS2_FCTL_TXOFIEN | PS2_FCTL_RXUFIEN
  | PS2_FCTL_RXOFIEN | PS2_FCTL_RXRDYIEN;

 writel(rval, drvdata->reg_base + PS2_REG_FCTL);

 src_clk = clk_get_rate(drvdata->clk);

 clk_scdf = src_clk / PS2_SAMPLE_CLK - 1;
 clk_pcdf = PS2_SAMPLE_CLK / PS2_SCLK - 1;
 rval = (clk_scdf << 8) | clk_pcdf;
 writel(rval, drvdata->reg_base + PS2_REG_CLKDR);


 rval = PS2_GCTL_RESET | PS2_GCTL_INTEN | PS2_GCTL_MASTER
  | PS2_GCTL_BUSEN;

 spin_lock_irqsave(&drvdata->lock, flags);
 writel(rval, drvdata->reg_base + PS2_REG_GCTL);
 spin_unlock_irqrestore(&drvdata->lock, flags);

 return 0;
}
