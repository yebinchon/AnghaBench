
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct ti_edac {scalar_t__ reg; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 ti_edac_readl(struct ti_edac *edac, u16 offset)
{
 return readl_relaxed(edac->reg + offset);
}
