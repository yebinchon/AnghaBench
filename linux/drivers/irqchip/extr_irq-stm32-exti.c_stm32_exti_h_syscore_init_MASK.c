#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stm32_exti_host_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_exti_h_syscore_ops ; 
 struct stm32_exti_host_data* stm32_host_data ; 

__attribute__((used)) static void FUNC1(struct stm32_exti_host_data *host_data)
{
	stm32_host_data = host_data;
	FUNC0(&stm32_exti_h_syscore_ops);
}