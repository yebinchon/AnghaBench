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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct lg4573 {TYPE_1__ panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct lg4573*) ; 
 int FUNC2 (struct lg4573*) ; 
 int FUNC3 (struct lg4573*) ; 

__attribute__((used)) static int FUNC4(struct lg4573 *ctx)
{
	int ret;

	FUNC0(ctx->panel.dev, "initializing LCD\n");

	ret = FUNC1(ctx);
	if (ret)
		return ret;

	ret = FUNC3(ctx);
	if (ret)
		return ret;

	return FUNC2(ctx);
}