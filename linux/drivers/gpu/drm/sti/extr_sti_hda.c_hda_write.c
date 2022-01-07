
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_hda {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hda_write(struct sti_hda *hda, u32 val, int offset)
{
 writel(val, hda->regs + offset);
}
