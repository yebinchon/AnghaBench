
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga_device {int cookie; int (* irq_set_state ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static inline void vga_irq_set_state(struct vga_device *vgadev, bool state)
{
 if (vgadev->irq_set_state)
  vgadev->irq_set_state(vgadev->cookie, state);
}
