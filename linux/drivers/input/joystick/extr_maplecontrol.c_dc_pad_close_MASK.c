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
struct input_dev {int /*<<< orphan*/  dev; } ;
struct dc_pad {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAPLE_FUNC_CONTROLLER ; 
 int /*<<< orphan*/  dc_pad_callback ; 
 struct dc_pad* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct input_dev *dev)
{
	struct dc_pad *pad = FUNC0(&dev->dev);

	FUNC1(pad->mdev, dc_pad_callback, 0,
		MAPLE_FUNC_CONTROLLER);
}