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
struct hsi_msg {int /*<<< orphan*/  status; } ;
struct cs_hsi_iface {TYPE_1__* cl; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct cs_hsi_iface *hi,
					struct hsi_msg *msg, const char *info,
					unsigned int *state)
{
	FUNC1(&hi->lock);
	FUNC0(&hi->cl->device, "HSI %s error, msg %d, state %u\n",
		info, msg->status, *state);
}