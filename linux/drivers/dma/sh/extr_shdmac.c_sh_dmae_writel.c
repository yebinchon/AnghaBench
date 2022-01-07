
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sh_dmae_chan {scalar_t__ base; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void sh_dmae_writel(struct sh_dmae_chan *sh_dc, u32 data, u32 reg)
{
 __raw_writel(data, sh_dc->base + reg);
}
