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
struct scmi_xfer {int dummy; } ;
struct scmi_chan_info {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct scmi_chan_info const*,struct scmi_xfer*) ; 

__attribute__((used)) static bool FUNC3(const struct scmi_chan_info *cinfo,
				      struct scmi_xfer *xfer, ktime_t stop)
{
	ktime_t __cur = FUNC1();

	return FUNC2(cinfo, xfer) || FUNC0(__cur, stop);
}