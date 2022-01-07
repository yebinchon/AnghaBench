
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_exti_host_data {int dummy; } ;


 int register_syscore_ops (int *) ;
 int stm32_exti_h_syscore_ops ;
 struct stm32_exti_host_data* stm32_host_data ;

__attribute__((used)) static void stm32_exti_h_syscore_init(struct stm32_exti_host_data *host_data)
{
 stm32_host_data = host_data;
 register_syscore_ops(&stm32_exti_h_syscore_ops);
}
