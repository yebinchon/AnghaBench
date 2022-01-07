
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;


 int DISPC_IRQSTATUS ;
 int dispc_read_reg (struct dispc_device*,int ) ;

__attribute__((used)) static u32 dispc_read_irqstatus(struct dispc_device *dispc)
{
 return dispc_read_reg(dispc, DISPC_IRQSTATUS);
}
