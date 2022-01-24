#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {int x; int y; int z; } ;
struct TYPE_4__ {int x; int y; int z; } ;
struct adxl34x {int /*<<< orphan*/  mutex; TYPE_3__ hwcal; TYPE_2__ saved; TYPE_1__ swcal; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adxl34x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OFSX ; 
 int /*<<< orphan*/  OFSY ; 
 int /*<<< orphan*/  OFSZ ; 
 struct adxl34x* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf, size_t count)
{
	struct adxl34x *ac = FUNC1(dev);

	/*
	 * Hardware offset calibration has a resolution of 15.6 mg/LSB.
	 * We use HW calibration and handle the remaining bits in SW. (4mg/LSB)
	 */

	FUNC2(&ac->mutex);
	ac->hwcal.x -= (ac->saved.x / 4);
	ac->swcal.x = ac->saved.x % 4;

	ac->hwcal.y -= (ac->saved.y / 4);
	ac->swcal.y = ac->saved.y % 4;

	ac->hwcal.z -= (ac->saved.z / 4);
	ac->swcal.z = ac->saved.z % 4;

	FUNC0(ac, OFSX, (s8) ac->hwcal.x);
	FUNC0(ac, OFSY, (s8) ac->hwcal.y);
	FUNC0(ac, OFSZ, (s8) ac->hwcal.z);
	FUNC3(&ac->mutex);

	return count;
}