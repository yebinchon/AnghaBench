
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sh_dmae_chan {scalar_t__ base; } ;


 scalar_t__ __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 sh_dmae_readl(struct sh_dmae_chan *sh_dc, u32 reg)
{
 return __raw_readl(sh_dc->base + reg);
}
