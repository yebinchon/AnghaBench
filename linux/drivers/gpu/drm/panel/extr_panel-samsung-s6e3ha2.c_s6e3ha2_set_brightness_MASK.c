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
struct s6e3ha2 {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int brightness; unsigned int max_brightness; scalar_t__ power; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FB_BLANK_NORMAL ; 
 unsigned int S6E3HA2_MIN_BRIGHTNESS ; 
 struct s6e3ha2* FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct s6e3ha2*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct s6e3ha2*) ; 
 int /*<<< orphan*/  FUNC5 (struct s6e3ha2*) ; 
 int /*<<< orphan*/  FUNC6 (struct s6e3ha2*) ; 
 int /*<<< orphan*/  FUNC7 (struct s6e3ha2*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct backlight_device *bl_dev)
{
	struct s6e3ha2 *ctx = FUNC0(bl_dev);
	unsigned int brightness = bl_dev->props.brightness;
	int ret;

	if (brightness < S6E3HA2_MIN_BRIGHTNESS ||
		brightness > bl_dev->props.max_brightness) {
		FUNC1(ctx->dev, "Invalid brightness: %u\n", brightness);
		return -EINVAL;
	}

	if (bl_dev->props.power > FB_BLANK_NORMAL)
		return -EPERM;

	FUNC3(ret, FUNC6(ctx));
	FUNC3(ret, FUNC7(ctx, brightness));
	FUNC3(ret, FUNC2(ctx));
	FUNC3(ret, FUNC4(ctx));
	FUNC3(ret, FUNC5(ctx));

	return 0;
}