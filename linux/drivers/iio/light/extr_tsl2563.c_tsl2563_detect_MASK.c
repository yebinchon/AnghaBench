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
struct tsl2563_chip {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct tsl2563_chip*) ; 
 int FUNC1 (struct tsl2563_chip*,int) ; 

__attribute__((used)) static int FUNC2(struct tsl2563_chip *chip)
{
	int ret;

	ret = FUNC1(chip, 1);
	if (ret)
		return ret;

	ret = FUNC0(chip);
	if (ret < 0)
		return ret;

	return ret ? 0 : -ENODEV;
}