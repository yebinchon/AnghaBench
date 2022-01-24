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
struct hv_vmbus_device_id {int /*<<< orphan*/  guid; } ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const struct hv_vmbus_device_id *
FUNC2(const struct hv_vmbus_device_id *id, const guid_t *guid)
{
	if (id == NULL)
		return NULL; /* empty device table */

	for (; !FUNC1(&id->guid); id++)
		if (FUNC0(&id->guid, guid))
			return id;

	return NULL;
}