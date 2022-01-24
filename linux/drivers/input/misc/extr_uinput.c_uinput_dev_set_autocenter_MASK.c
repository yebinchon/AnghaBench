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
typedef  int /*<<< orphan*/  u16 ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FF_AUTOCENTER ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct input_dev *dev, u16 magnitude)
{
	FUNC0(dev, EV_FF, FF_AUTOCENTER, magnitude);
}