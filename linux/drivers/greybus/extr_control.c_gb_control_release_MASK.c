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
struct gb_control {struct gb_control* product_string; struct gb_control* vendor_string; int /*<<< orphan*/  connection; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_control*) ; 
 struct gb_control* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct gb_control *control = FUNC2(dev);

	FUNC0(control->connection);

	FUNC1(control->vendor_string);
	FUNC1(control->product_string);

	FUNC1(control);
}