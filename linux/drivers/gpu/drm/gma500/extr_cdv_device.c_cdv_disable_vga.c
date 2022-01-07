
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_device {int dummy; } ;


 int REG_READ (int ) ;
 int REG_WRITE (int ,int ) ;
 int VGACNTRL ;
 int VGA_DISP_DISABLE ;
 int VGA_SR_DATA ;
 int VGA_SR_INDEX ;
 int inb (int ) ;
 int outb (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void cdv_disable_vga(struct drm_device *dev)
{
 u8 sr1;
 u32 vga_reg;

 vga_reg = VGACNTRL;

 outb(1, VGA_SR_INDEX);
 sr1 = inb(VGA_SR_DATA);
 outb(sr1 | 1<<5, VGA_SR_DATA);
 udelay(300);

 REG_WRITE(vga_reg, VGA_DISP_DISABLE);
 REG_READ(vga_reg);
}
