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
struct gb_interface {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_interface*) ; 
 struct gb_interface* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_interface*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct gb_interface *intf = FUNC1(dev);

	FUNC2(intf);

	FUNC0(intf);
}