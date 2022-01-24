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
struct of_device_id {char* compatible; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ *,struct of_device_id const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static void FUNC3(void)
{
	static const struct of_device_id ahb_match[] = {
		{ .compatible = "nvidia,tegra30-ahb", },
		{ }
	};
	struct device_node *ahb;

	ahb = FUNC0(NULL, ahb_match);
	if (ahb) {
		FUNC2(ahb);
		FUNC1(ahb);
	}
}