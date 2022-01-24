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
struct adv7511 {scalar_t__ edid_read; int /*<<< orphan*/  wq; TYPE_1__* i2c_main; } ;
struct TYPE_2__ {scalar_t__ irq; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct adv7511*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct adv7511 *adv7511, int timeout)
{
	int ret;

	if (adv7511->i2c_main->irq) {
		ret = FUNC3(adv7511->wq,
				adv7511->edid_read, FUNC1(timeout));
	} else {
		for (; timeout > 0; timeout -= 25) {
			ret = FUNC0(adv7511, false);
			if (ret < 0)
				break;

			if (adv7511->edid_read)
				break;

			FUNC2(25);
		}
	}

	return adv7511->edid_read ? 0 : -EIO;
}