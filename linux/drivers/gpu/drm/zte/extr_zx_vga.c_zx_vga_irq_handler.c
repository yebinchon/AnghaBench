
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx_vga {int connected; int complete; scalar_t__ mmio; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 scalar_t__ VGA_AUTO_DETECT_SEL ;
 int VGA_CLEAR_IRQ ;
 int VGA_DETECT_SEL_NO_DEVICE ;
 int VGA_DEVICE_CONNECTED ;
 int VGA_DEVICE_DISCONNECTED ;
 scalar_t__ VGA_I2C_STATUS ;
 int VGA_TRANS_DONE ;
 int complete (int *) ;
 int zx_readl (scalar_t__) ;
 int zx_writel (scalar_t__,int ) ;
 int zx_writel_mask (scalar_t__,int ,int ) ;

__attribute__((used)) static irqreturn_t zx_vga_irq_handler(int irq, void *dev_id)
{
 struct zx_vga *vga = dev_id;
 u32 status;

 status = zx_readl(vga->mmio + VGA_I2C_STATUS);


 zx_writel_mask(vga->mmio + VGA_I2C_STATUS, VGA_CLEAR_IRQ,
         VGA_CLEAR_IRQ);

 if (status & VGA_DEVICE_CONNECTED) {






  vga->connected = 1;
  return IRQ_WAKE_THREAD;
 }

 if (status & VGA_DEVICE_DISCONNECTED) {
  zx_writel(vga->mmio + VGA_AUTO_DETECT_SEL,
     VGA_DETECT_SEL_NO_DEVICE);
  vga->connected = 0;
  return IRQ_WAKE_THREAD;
 }

 if (status & VGA_TRANS_DONE) {
  complete(&vga->complete);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
