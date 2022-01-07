
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_hda {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 hda_read(struct sti_hda *hda, int offset)
{
 return readl(hda->regs + offset);
}
