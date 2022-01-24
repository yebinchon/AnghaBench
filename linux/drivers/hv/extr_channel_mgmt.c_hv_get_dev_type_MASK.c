#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct TYPE_4__ {int /*<<< orphan*/  if_type; } ;
struct TYPE_5__ {TYPE_1__ offer; } ;
struct vmbus_channel {TYPE_2__ offermsg; } ;
typedef  int /*<<< orphan*/  guid_t ;
struct TYPE_6__ {int /*<<< orphan*/  guid; } ;

/* Variables and functions */
 size_t HV_IDE ; 
 size_t HV_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct vmbus_channel const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*) ; 
 TYPE_3__* vmbus_devs ; 

__attribute__((used)) static u16 FUNC4(const struct vmbus_channel *channel)
{
	const guid_t *guid = &channel->offermsg.offer.if_type;
	u16 i;

	if (FUNC1(channel) || FUNC2(guid))
		return HV_UNKNOWN;

	for (i = HV_IDE; i < HV_UNKNOWN; i++) {
		if (FUNC0(guid, &vmbus_devs[i].guid))
			return i;
	}
	FUNC3("Unknown GUID: %pUl\n", guid);
	return i;
}