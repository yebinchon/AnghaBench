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
struct tegra_bpmp_channel {int /*<<< orphan*/ * ob; int /*<<< orphan*/  ivc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct tegra_bpmp_channel *channel)
{
	void *frame;

	frame = FUNC1(channel->ivc);
	if (FUNC0(frame)) {
		channel->ob = NULL;
		return false;
	}

	channel->ob = frame;

	return true;
}