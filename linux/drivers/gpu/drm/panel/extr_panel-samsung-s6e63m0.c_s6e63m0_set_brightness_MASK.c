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
struct s6e63m0 {int dummy; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCS_PGAMMACTL ; 
 struct s6e63m0* FUNC1 (struct backlight_device*) ; 
 int FUNC2 (struct s6e63m0*) ; 
 int /*<<< orphan*/  FUNC3 (struct s6e63m0*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct s6e63m0*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * s6e63m0_gamma_22 ; 

__attribute__((used)) static int FUNC5(struct backlight_device *bd)
{
	struct s6e63m0 *ctx = FUNC1(bd);

	int brightness = bd->props.brightness;

	/* disable and set new gamma */
	FUNC3(ctx, s6e63m0_gamma_22[brightness],
			  FUNC0(s6e63m0_gamma_22[brightness]));

	/* update gamma table. */
	FUNC4(ctx, MCS_PGAMMACTL, 0x01);

	return FUNC2(ctx);
}