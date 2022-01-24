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
struct ili9322 {int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  dev; int /*<<< orphan*/  supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ili9322 *ili)
{
	int ret;

	/* Assert RESET */
	FUNC2(ili->reset_gpio, 1);

	ret = FUNC4(FUNC0(ili->supplies), ili->supplies);
	if (ret < 0) {
		FUNC1(ili->dev, "unable to enable regulators\n");
		return ret;
	}
	FUNC3(20);

	/* De-assert RESET */
	FUNC2(ili->reset_gpio, 0);

	FUNC3(10);

	return 0;
}