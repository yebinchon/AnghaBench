
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vic {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vic_writel(struct vic *vic, u32 value, unsigned int offset)
{
 writel(value, vic->regs + offset);
}
