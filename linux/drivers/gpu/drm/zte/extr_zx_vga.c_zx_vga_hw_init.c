
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_vga {scalar_t__ mmio; int i2c_wclk; } ;


 int DDC_ADDR ;
 int DIV_ROUND_UP (unsigned long,int) ;
 scalar_t__ VGA_AUTO_DETECT_PARA ;
 scalar_t__ VGA_AUTO_DETECT_SEL ;
 scalar_t__ VGA_CLK_DIV_FS ;
 scalar_t__ VGA_CMD_CFG ;
 int VGA_CMD_TRANS ;
 int VGA_DETECT_SEL_NO_DEVICE ;
 scalar_t__ VGA_DEVICE_ADDR ;
 unsigned long clk_get_rate (int ) ;
 int zx_writel (scalar_t__,int) ;
 int zx_writel_mask (scalar_t__,int ,int ) ;

__attribute__((used)) static void zx_vga_hw_init(struct zx_vga *vga)
{
 unsigned long ref = clk_get_rate(vga->i2c_wclk);
 int div;





 div = DIV_ROUND_UP(ref / 1000, 400 * 4) - 1;
 zx_writel(vga->mmio + VGA_CLK_DIV_FS, div);


 zx_writel(vga->mmio + VGA_AUTO_DETECT_PARA, 0x80);
 zx_writel(vga->mmio + VGA_AUTO_DETECT_SEL, VGA_DETECT_SEL_NO_DEVICE);





 zx_writel(vga->mmio + VGA_DEVICE_ADDR, DDC_ADDR);
 zx_writel_mask(vga->mmio + VGA_CMD_CFG, VGA_CMD_TRANS, VGA_CMD_TRANS);
}
