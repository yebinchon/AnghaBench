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
struct gb_bundle {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_bundle*) ; 

int FUNC3(struct gb_bundle *bundle)
{
	int ret;

	ret = FUNC1(&bundle->dev);
	if (ret) {
		FUNC0(&bundle->dev, "failed to register bundle: %d\n", ret);
		return ret;
	}

	FUNC2(bundle);

	return 0;
}