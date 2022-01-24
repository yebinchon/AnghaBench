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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* param_buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSMI_CALLBACK ; 
 int /*<<< orphan*/  GSMI_CMD_CLEAR_CONFIG ; 
 TYPE_2__ gsmi_dev ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj,
				       struct kobj_attribute *attr,
				       const char *buf, size_t count)
{
	int rc;
	unsigned long flags;

	FUNC2(&gsmi_dev.lock, flags);

	/* clear parameter buffer */
	FUNC1(gsmi_dev.param_buf->start, 0, gsmi_dev.param_buf->length);

	rc = FUNC0(GSMI_CALLBACK, GSMI_CMD_CLEAR_CONFIG);

	FUNC3(&gsmi_dev.lock, flags);

	if (rc)
		return rc;
	return count;
}