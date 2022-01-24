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
struct isert_device {int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isert_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct isert_device*) ; 

__attribute__((used)) static void
FUNC3(struct isert_device *device)
{
	FUNC2("device %p\n", device);

	FUNC0(device->pd);
	FUNC1(device);
}