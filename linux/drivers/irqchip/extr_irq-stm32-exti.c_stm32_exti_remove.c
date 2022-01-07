
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int stm32_exti_h_syscore_deinit () ;

__attribute__((used)) static int stm32_exti_remove(struct platform_device *pdev)
{
 stm32_exti_h_syscore_deinit();
 return 0;
}
