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
struct input_dev {int dummy; } ;
struct gc_subdev {int idx; } ;
struct gc {int dummy; } ;
struct ff_rumble_effect {scalar_t__ weak_magnitude; scalar_t__ strong_magnitude; } ;
struct TYPE_2__ {struct ff_rumble_effect rumble; } ;
struct ff_effect {scalar_t__ type; TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ FF_RUMBLE ; 
 unsigned int GC_N64_CMD_00 ; 
 unsigned int GC_N64_CMD_01 ; 
 unsigned int GC_N64_CMD_03 ; 
 unsigned int GC_N64_CMD_1b ; 
 unsigned int GC_N64_CMD_80 ; 
 unsigned int GC_N64_CMD_c0 ; 
 int /*<<< orphan*/  GC_N64_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct gc*,unsigned int,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct gc*,unsigned char) ; 
 struct gc* FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct input_dev *dev, void *data,
			      struct ff_effect *effect)
{
	int i;
	unsigned long flags;
	struct gc *gc = FUNC2(dev);
	struct gc_subdev *sdev = data;
	unsigned char target = 1 << sdev->idx; /* select desired pin */

	if (effect->type == FF_RUMBLE) {
		struct ff_rumble_effect *rumble = &effect->u.rumble;
		unsigned int cmd =
			rumble->strong_magnitude || rumble->weak_magnitude ?
			GC_N64_CMD_01 : GC_N64_CMD_00;

		FUNC4(flags);

		/* Init Rumble - 0x03, 0x80, 0x01, (34)0x80 */
		FUNC0(gc, GC_N64_CMD_03, target);
		FUNC0(gc, GC_N64_CMD_80, target);
		FUNC0(gc, GC_N64_CMD_01, target);
		for (i = 0; i < 32; i++)
			FUNC0(gc, GC_N64_CMD_80, target);
		FUNC1(gc, target);

		FUNC5(GC_N64_DELAY);

		/* Now start or stop it - 0x03, 0xc0, 0zx1b, (32)0x01/0x00 */
		FUNC0(gc, GC_N64_CMD_03, target);
		FUNC0(gc, GC_N64_CMD_c0, target);
		FUNC0(gc, GC_N64_CMD_1b, target);
		for (i = 0; i < 32; i++)
			FUNC0(gc, cmd, target);
		FUNC1(gc, target);

		FUNC3(flags);

	}

	return 0;
}