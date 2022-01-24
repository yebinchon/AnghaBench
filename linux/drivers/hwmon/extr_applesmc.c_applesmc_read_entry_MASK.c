#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct applesmc_entry {scalar_t__ len; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPLESMC_READ_CMD ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 TYPE_1__ smcreg ; 

__attribute__((used)) static int FUNC3(const struct applesmc_entry *entry,
			       u8 *buf, u8 len)
{
	int ret;

	if (entry->len != len)
		return -EINVAL;
	FUNC0(&smcreg.mutex);
	ret = FUNC2(APPLESMC_READ_CMD, entry->key, buf, len);
	FUNC1(&smcreg.mutex);

	return ret;
}