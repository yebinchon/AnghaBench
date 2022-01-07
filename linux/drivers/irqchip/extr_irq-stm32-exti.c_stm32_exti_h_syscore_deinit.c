
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stm32_exti_h_syscore_ops ;
 int unregister_syscore_ops (int *) ;

__attribute__((used)) static void stm32_exti_h_syscore_deinit(void)
{
 unregister_syscore_ops(&stm32_exti_h_syscore_ops);
}
