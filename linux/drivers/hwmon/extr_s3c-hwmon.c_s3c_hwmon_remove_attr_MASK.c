#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_attr; } ;
struct s3c_hwmon_attr {TYPE_2__ label; TYPE_1__ in; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct device *dev,
				  struct s3c_hwmon_attr *attrs)
{
	FUNC0(dev, &attrs->in.dev_attr);
	FUNC0(dev, &attrs->label.dev_attr);
}