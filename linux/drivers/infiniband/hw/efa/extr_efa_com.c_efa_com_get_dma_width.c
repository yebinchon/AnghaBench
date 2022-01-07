
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efa_com_dev {int dma_addr_bits; int efa_dev; } ;


 int EFA_REGS_CAPS_DMA_ADDR_WIDTH_MASK ;
 int EFA_REGS_CAPS_DMA_ADDR_WIDTH_SHIFT ;
 int EFA_REGS_CAPS_OFF ;
 int EINVAL ;
 int efa_com_reg_read32 (struct efa_com_dev*,int ) ;
 int ibdev_dbg (int ,char*,int) ;
 int ibdev_err (int ,char*,int) ;

int efa_com_get_dma_width(struct efa_com_dev *edev)
{
 u32 caps = efa_com_reg_read32(edev, EFA_REGS_CAPS_OFF);
 int width;

 width = (caps & EFA_REGS_CAPS_DMA_ADDR_WIDTH_MASK) >>
  EFA_REGS_CAPS_DMA_ADDR_WIDTH_SHIFT;

 ibdev_dbg(edev->efa_dev, "DMA width: %d\n", width);

 if (width < 32 || width > 64) {
  ibdev_err(edev->efa_dev, "DMA width illegal value: %d\n", width);
  return -EINVAL;
 }

 edev->dma_addr_bits = width;

 return width;
}
