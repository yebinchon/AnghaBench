
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rot_context {int dummy; } ;


 int ROT_CONFIG ;
 int ROT_CONFIG_IRQ ;
 int rot_read (int ) ;
 int rot_write (int ,int ) ;

__attribute__((used)) static void rotator_reg_set_irq(struct rot_context *rot, bool enable)
{
 u32 val = rot_read(ROT_CONFIG);

 if (enable == 1)
  val |= ROT_CONFIG_IRQ;
 else
  val &= ~ROT_CONFIG_IRQ;

 rot_write(val, ROT_CONFIG);
}
