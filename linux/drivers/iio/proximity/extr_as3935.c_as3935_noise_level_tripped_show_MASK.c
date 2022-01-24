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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct as3935_state {int /*<<< orphan*/  lock; scalar_t__ noise_tripped; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct as3935_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct as3935_state *st = FUNC1(FUNC0(dev));
	int ret;

	FUNC2(&st->lock);
	ret = FUNC4(buf, "%d\n", !FUNC5(jiffies, st->noise_tripped + HZ));
	FUNC3(&st->lock);

	return ret;
}