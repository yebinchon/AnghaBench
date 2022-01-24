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
struct tegra_bpmp_channel {unsigned int index; int /*<<< orphan*/  bpmp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static bool FUNC2(struct tegra_bpmp_channel *channel)
{
	unsigned int index = channel->index;

	return FUNC1(channel->bpmp, index) == FUNC0(index);
}