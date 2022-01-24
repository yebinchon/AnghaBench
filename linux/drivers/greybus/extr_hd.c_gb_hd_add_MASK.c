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
struct gb_host_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  svc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_host_device*) ; 

int FUNC4(struct gb_host_device *hd)
{
	int ret;

	ret = FUNC0(&hd->dev);
	if (ret)
		return ret;

	ret = FUNC2(hd->svc);
	if (ret) {
		FUNC1(&hd->dev);
		return ret;
	}

	FUNC3(hd);

	return 0;
}