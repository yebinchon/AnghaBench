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
struct input_dev {int dummy; } ;
struct gf2k {size_t id; struct input_dev* dev; } ;

/* Variables and functions */
 scalar_t__ ABS_HAT0X ; 
 int FUNC0 (int,int,int) ; 
 scalar_t__* gf2k_abs ; 
 int* gf2k_axes ; 
 int /*<<< orphan*/ * gf2k_btn_joy ; 
 int /*<<< orphan*/ * gf2k_btn_pad ; 
 int** gf2k_hat_to_axis ; 
 int* gf2k_hats ; 
 int* gf2k_joys ; 
 int* gf2k_pads ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct gf2k *gf2k, unsigned char *data)
{
	struct input_dev *dev = gf2k->dev;
	int i, t;

	for (i = 0; i < 4 && i < gf2k_axes[gf2k->id]; i++)
		FUNC1(dev, gf2k_abs[i], FUNC0(i<<3,8,0) | FUNC0(i+46,1,8) | FUNC0(i+50,1,9));

	for (i = 0; i < 2 && i < gf2k_axes[gf2k->id] - 4; i++)
		FUNC1(dev, gf2k_abs[i], FUNC0(i*9+60,8,0) | FUNC0(i+54,1,9));

	t = FUNC0(40,4,0);

	for (i = 0; i < gf2k_hats[gf2k->id]; i++)
		FUNC1(dev, ABS_HAT0X + i, gf2k_hat_to_axis[t][i]);

	t = FUNC0(44,2,0) | FUNC0(32,8,2) | FUNC0(78,2,10);

	for (i = 0; i < gf2k_joys[gf2k->id]; i++)
		FUNC2(dev, gf2k_btn_joy[i], (t >> i) & 1);

	for (i = 0; i < gf2k_pads[gf2k->id]; i++)
		FUNC2(dev, gf2k_btn_pad[i], (t >> i) & 1);

	FUNC3(dev);
}