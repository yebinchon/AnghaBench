
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;


 int DISPC_IRQ_FRAMEDONEWB ;

__attribute__((used)) static u32 dispc_wb_get_framedone_irq(struct dispc_device *dispc)
{
 return DISPC_IRQ_FRAMEDONEWB;
}
