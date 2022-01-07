
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct its_node {scalar_t__ base; } ;


 scalar_t__ GITS_IIDR ;
 int gic_enable_quirks (int ,int ,struct its_node*) ;
 int its_quirks ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static void its_enable_quirks(struct its_node *its)
{
 u32 iidr = readl_relaxed(its->base + GITS_IIDR);

 gic_enable_quirks(iidr, its_quirks, its);
}
