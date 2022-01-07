
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_dmae_device {scalar_t__ chcr_offset; } ;
struct sh_dmae_chan {scalar_t__ base; } ;


 int __raw_writel (int ,scalar_t__) ;
 struct sh_dmae_device* to_sh_dev (struct sh_dmae_chan*) ;

__attribute__((used)) static void chcr_write(struct sh_dmae_chan *sh_dc, u32 data)
{
 struct sh_dmae_device *shdev = to_sh_dev(sh_dc);

 __raw_writel(data, sh_dc->base + shdev->chcr_offset);
}
