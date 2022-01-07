
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_device {scalar_t__ reg_base; } ;


 scalar_t__ IOAT_INTRCTRL_OFFSET ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void ioat_disable_interrupts(struct ioatdma_device *ioat_dma)
{

 writeb(0, ioat_dma->reg_base + IOAT_INTRCTRL_OFFSET);
}
