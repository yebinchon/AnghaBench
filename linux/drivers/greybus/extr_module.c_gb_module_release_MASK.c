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
struct gb_module {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_module*) ; 
 struct gb_module* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_module*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct gb_module *module = FUNC1(dev);

	FUNC2(module);

	FUNC0(module);
}