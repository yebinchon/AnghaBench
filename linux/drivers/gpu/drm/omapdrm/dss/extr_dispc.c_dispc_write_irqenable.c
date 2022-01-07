
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;


 int DISPC_IRQENABLE ;
 int dispc_clear_irqstatus (struct dispc_device*,int) ;
 int dispc_read_reg (struct dispc_device*,int ) ;
 int dispc_write_reg (struct dispc_device*,int ,int) ;

__attribute__((used)) static void dispc_write_irqenable(struct dispc_device *dispc, u32 mask)
{
 u32 old_mask = dispc_read_reg(dispc, DISPC_IRQENABLE);


 dispc_clear_irqstatus(dispc, (mask ^ old_mask) & mask);

 dispc_write_reg(dispc, DISPC_IRQENABLE, mask);


 dispc_read_reg(dispc, DISPC_IRQENABLE);
}
