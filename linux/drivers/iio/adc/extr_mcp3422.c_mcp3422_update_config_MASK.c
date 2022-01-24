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
typedef  int /*<<< orphan*/  u8 ;
struct mcp3422 {int /*<<< orphan*/  lock; int /*<<< orphan*/  config; int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mcp3422 *adc, u8 newconfig)
{
	int ret;

	FUNC1(&adc->lock);

	ret = FUNC0(adc->i2c, &newconfig, 1);
	if (ret > 0) {
		adc->config = newconfig;
		ret = 0;
	}

	FUNC2(&adc->lock);

	return ret;
}