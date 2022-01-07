
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bochs_device {int qext_size; scalar_t__ mmio; } ;


 int writel (int,scalar_t__) ;

__attribute__((used)) static void bochs_hw_set_little_endian(struct bochs_device *bochs)
{
 if (bochs->qext_size < 8)
  return;

 writel(0x1e1e1e1e, bochs->mmio + 0x604);
}
