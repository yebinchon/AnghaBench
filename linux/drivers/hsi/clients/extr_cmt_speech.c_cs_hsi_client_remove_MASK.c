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
struct device {int dummy; } ;
struct cs_hsi_iface {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct cs_hsi_iface* hi; } ;

/* Variables and functions */
 TYPE_1__ cs_char_data ; 
 int /*<<< orphan*/  cs_char_miscdev ; 
 int /*<<< orphan*/  FUNC0 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct cs_hsi_iface *hi;

	FUNC1(dev, "hsi_client_remove\n");
	FUNC2(&cs_char_miscdev);
	FUNC3(&cs_char_data.lock);
	hi = cs_char_data.hi;
	cs_char_data.hi = NULL;
	FUNC4(&cs_char_data.lock);
	if (hi)
		FUNC0(hi);

	return 0;
}