
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_mic {scalar_t__ reg; } ;


 int ETIMEDOUT ;
 scalar_t__ MIC_OP ;
 int MIC_SW_RST ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mic_sw_reset(struct exynos_mic *mic)
{
 unsigned int retry = 100;
 int ret;

 writel(MIC_SW_RST, mic->reg + MIC_OP);

 while (retry-- > 0) {
  ret = readl(mic->reg + MIC_OP);
  if (!(ret & MIC_SW_RST))
   return 0;

  udelay(10);
 }

 return -ETIMEDOUT;
}
