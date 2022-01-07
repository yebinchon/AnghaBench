
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct ti_edac {scalar_t__ reg; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void ti_edac_writel(struct ti_edac *edac, u32 val, u16 offset)
{
 writel_relaxed(val, edac->reg + offset);
}
