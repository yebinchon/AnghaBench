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
struct tegra_kbc {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct tegra_kbc* FUNC0 (struct input_dev*) ; 
 void FUNC1 (struct tegra_kbc*) ; 

__attribute__((used)) static void FUNC2(struct input_dev *dev)
{
	struct tegra_kbc *kbc = FUNC0(dev);

	return FUNC1(kbc);
}