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
typedef  int /*<<< orphan*/  uint64_t ;
struct ishtp_device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  MNG_SYNC_FW_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ishtp_device *dev)
{
	static unsigned long	prev_sync;
	uint64_t	usec;

	if (prev_sync && jiffies - prev_sync < 20 * HZ)
		return;

	prev_sync = jiffies;
	usec = FUNC2(FUNC1());
	FUNC0(dev, MNG_SYNC_FW_CLOCK, &usec, sizeof(uint64_t));
}