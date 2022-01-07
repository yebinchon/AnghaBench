
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rot_context {int dummy; } ;


 int ROT_CONTROL ;
 int ROT_CONTROL_START ;
 int rot_read (int ) ;
 int rot_write (int ,int ) ;
 int rotator_reg_set_irq (struct rot_context*,int) ;

__attribute__((used)) static void rotator_start(struct rot_context *rot)
{
 u32 val;


 rotator_reg_set_irq(rot, 1);

 val = rot_read(ROT_CONTROL);
 val |= ROT_CONTROL_START;
 rot_write(val, ROT_CONTROL);
}
