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
struct zhenhua {unsigned char* data; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_RZ ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 

__attribute__((used)) static void FUNC2(struct zhenhua *zhenhua)
{
	struct input_dev *dev = zhenhua->dev;
	unsigned char *data = zhenhua->data;

	FUNC0(dev, ABS_Y, data[1]);
	FUNC0(dev, ABS_X, data[2]);
	FUNC0(dev, ABS_RZ, data[3]);
	FUNC0(dev, ABS_Z, data[4]);

	FUNC1(dev);
}