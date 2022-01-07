
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_tvout {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 tvout_read(struct sti_tvout *tvout, int offset)
{
 return readl(tvout->regs + offset);
}
