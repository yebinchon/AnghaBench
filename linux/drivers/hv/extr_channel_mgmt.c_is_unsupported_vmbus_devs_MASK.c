#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  guid_t ;
struct TYPE_3__ {int /*<<< orphan*/  guid; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* vmbus_unsupported_devs ; 

__attribute__((used)) static bool FUNC2(const guid_t *guid)
{
	int i;

	for (i = 0; i < FUNC0(vmbus_unsupported_devs); i++)
		if (FUNC1(guid, &vmbus_unsupported_devs[i].guid))
			return true;
	return false;
}