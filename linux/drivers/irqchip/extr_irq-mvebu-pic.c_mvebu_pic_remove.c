
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mvebu_pic {int domain; } ;


 int irq_domain_remove (int ) ;
 int mvebu_pic_disable_percpu_irq ;
 int on_each_cpu (int ,struct mvebu_pic*,int) ;
 struct mvebu_pic* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mvebu_pic_remove(struct platform_device *pdev)
{
 struct mvebu_pic *pic = platform_get_drvdata(pdev);

 on_each_cpu(mvebu_pic_disable_percpu_irq, pic, 1);
 irq_domain_remove(pic->domain);

 return 0;
}
