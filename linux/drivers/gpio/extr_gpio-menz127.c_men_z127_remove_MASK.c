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
struct men_z127_gpio {int /*<<< orphan*/  mem; int /*<<< orphan*/  reg_base; int /*<<< orphan*/  gc; } ;
struct mcb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct men_z127_gpio* FUNC2 (struct mcb_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mcb_device *mdev)
{
	struct men_z127_gpio *men_z127_gpio = FUNC2(mdev);

	FUNC0(&men_z127_gpio->gc);
	FUNC1(men_z127_gpio->reg_base);
	FUNC3(men_z127_gpio->mem);
}