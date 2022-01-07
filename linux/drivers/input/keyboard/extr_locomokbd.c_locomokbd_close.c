
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct locomokbd {scalar_t__ base; } ;
struct input_dev {int dummy; } ;


 scalar_t__ LOCOMO_KIC ;
 struct locomokbd* input_get_drvdata (struct input_dev*) ;
 int locomo_readl (scalar_t__) ;
 int locomo_writel (int,scalar_t__) ;

__attribute__((used)) static void locomokbd_close(struct input_dev *dev)
{
 struct locomokbd *locomokbd = input_get_drvdata(dev);
 u16 r;

 r = locomo_readl(locomokbd->base + LOCOMO_KIC) & ~0x0010;
 locomo_writel(r, locomokbd->base + LOCOMO_KIC);
}
