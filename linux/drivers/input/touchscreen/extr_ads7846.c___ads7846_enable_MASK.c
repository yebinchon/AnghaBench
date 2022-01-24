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
struct ads7846 {TYPE_1__* spi; int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ads7846 *ts)
{
	int error;

	error = FUNC2(ts->reg);
	if (error != 0)
		FUNC1(&ts->spi->dev, "Failed to enable supply: %d\n", error);

	FUNC0(ts);
}