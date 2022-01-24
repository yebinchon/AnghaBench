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
struct s6e63j0x03 {struct backlight_device* bl_dev; } ;
struct TYPE_2__ {unsigned int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAMMA_CMD_CNT ; 
 int /*<<< orphan*/ * gamma_tbl ; 
 int FUNC0 (struct s6e63j0x03*,int) ; 
 int FUNC1 (struct s6e63j0x03*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct s6e63j0x03 *ctx,
					unsigned int brightness)
{
	struct backlight_device *bl_dev = ctx->bl_dev;
	unsigned int index = FUNC2(brightness);
	int ret;

	ret = FUNC0(ctx, true);
	if (ret < 0)
		return ret;

	ret = FUNC1(ctx, gamma_tbl[index], GAMMA_CMD_CNT);
	if (ret < 0)
		return ret;

	ret = FUNC0(ctx, false);
	if (ret < 0)
		return ret;

	bl_dev->props.brightness = brightness;

	return 0;
}