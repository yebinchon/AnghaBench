
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct falcon {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void falcon_writel(struct falcon *falcon, u32 value, u32 offset)
{
 writel(value, falcon->regs + offset);
}
