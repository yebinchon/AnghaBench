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
typedef  int u8 ;
struct lp8788_led {int on; int /*<<< orphan*/  lp; } ;
typedef  enum lp8788_isink_number { ____Placeholder_lp8788_isink_number } lp8788_isink_number ;

/* Variables and functions */
 int /*<<< orphan*/  LP8788_ISINK_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct lp8788_led *led,
			enum lp8788_isink_number num, int on)
{
	int ret;

	u8 mask = 1 << num;
	u8 val = on << num;

	ret = FUNC0(led->lp, LP8788_ISINK_CTRL, mask, val);
	if (ret == 0)
		led->on = on;

	return ret;
}