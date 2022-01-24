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
struct dln2_gpio_pin {int /*<<< orphan*/  pin; } ;
struct dln2_gpio {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct dln2_gpio_pin*,int) ; 

__attribute__((used)) static int FUNC2(struct dln2_gpio *dln2, int cmd, unsigned pin)
{
	struct dln2_gpio_pin req = {
		.pin = FUNC0(pin),
	};

	return FUNC1(dln2->pdev, cmd, &req, sizeof(req));
}